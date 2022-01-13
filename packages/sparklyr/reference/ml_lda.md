# ml_lda


Spark ML -- Latent Dirichlet Allocation




## Description

Latent Dirichlet Allocation (LDA), a topic model designed for text documents.





## Usage
```r
ml_lda(
  x,
  formula = NULL,
  k = 10,
  max_iter = 20,
  doc_concentration = NULL,
  topic_concentration = NULL,
  subsampling_rate = 0.05,
  optimizer = "online",
  checkpoint_interval = 10,
  keep_last_checkpoint = TRUE,
  learning_decay = 0.51,
  learning_offset = 1024,
  optimize_doc_concentration = TRUE,
  seed = NULL,
  features_col = "features",
  topic_distribution_col = "topicDistribution",
  uid = random_string("lda_"),
  ...
)

ml_describe_topics(model, max_terms_per_topic = 10)

ml_log_likelihood(model, dataset)

ml_log_perplexity(model, dataset)

ml_topics_matrix(model)
```




## Arguments


Argument      |Description
------------- |----------------
x | A ``spark_connection``, ``ml_pipeline``, or a ``tbl_spark``.
formula | Used when ``x`` is a ``tbl_spark``. R formula as a character string or a formula. This is used to transform the input dataframe before fitting, see ft_r_formula for details.
k | The number of clusters to create
max_iter | The maximum number of iterations to use.
doc_concentration | Concentration parameter (commonly named "alpha") for the prior placed on documents' distributions over topics ("theta"). See details.
topic_concentration | Concentration parameter (commonly named "beta" or "eta") for the prior placed on topics' distributions over terms.
subsampling_rate | (For Online optimizer only) Fraction of the corpus to be sampled and used in each iteration of mini-batch gradient descent, in range (0, 1]. Note that this should be adjusted in synch with ``max_iter`` so the entire corpus is used. Specifically, set both so that maxIterations * miniBatchFraction greater than or equal to 1.
optimizer | Optimizer or inference algorithm used to estimate the LDA model. Supported: "online" for Online Variational Bayes (default) and "em" for Expectation-Maximization.
checkpoint_interval | Set checkpoint interval (>= 1) or disable checkpoint (-1).
E.g. 10 means that the cache will get checkpointed every 10 iterations, defaults to 10.
keep_last_checkpoint | (Spark 2.0.0+) (For EM optimizer only) If using checkpointing, this indicates whether to keep the last checkpoint. If ``FALSE``, then the checkpoint will be deleted. Deleting the checkpoint can cause failures if a data partition is lost, so set this bit with care. Note that checkpoints will be cleaned up via reference counting, regardless.
learning_decay | (For Online optimizer only) Learning rate, set as an exponential decay rate. This should be between (0.5, 1.0] to guarantee asymptotic convergence. This is called "kappa" in the Online LDA paper (Hoffman et al., 2010). Default: 0.51, based on Hoffman et al.
learning_offset | (For Online optimizer only) A (positive) learning parameter that downweights early iterations. Larger values make early iterations count less. This is called "tau0" in the Online LDA paper (Hoffman et al., 2010) Default: 1024, following Hoffman et al.
optimize_doc_concentration | (For Online optimizer only) Indicates whether the ``doc_concentration`` (Dirichlet parameter for document-topic distribution) will be optimized during training. Setting this to true will make the model more expressive and fit the training data better. Default: ``FALSE``
seed | A random seed. Set this value if you need your results to be
reproducible across repeated calls.
features_col | Features column name, as a length-one character vector. The column should be single vector column of numeric values. Usually this column is output by `ft_r_formula`.
topic_distribution_col | Output column with estimates of the topic mixture distribution for each document (often called "theta" in the literature). Returns a vector of zeros for an empty document.
uid | A character string used to uniquely identify the ML estimator.
... | Optional arguments, see Details.
model | A fitted LDA model returned by ``ml_lda()``.
max_terms_per_topic | Maximum number of terms to collect for each topic. Default value of 10.
dataset | test corpus to use for calculating log likelihood or log perplexity




## Details

For `ml_lda.tbl_spark` with the formula interface, you can specify named arguments in `...` that will
  be passed `ft_regex_tokenizer()`, `ft_stop_words_remover()`, and `ft_count_vectorizer()`. For example, to increase the
  default `min_token_length`, you can use `ml_lda(dataset, ~ text, min_token_length = 4)`.

Terminology for LDA:

  
*  "term" = "word": an element of the vocabulary
  
*  "token": instance of a term appearing in a document
  
*  "topic": multinomial distribution over terms representing some concept
  
*  "document": one piece of text, corresponding to one row in the input data


Original LDA paper (journal version): Blei, Ng, and Jordan. "Latent Dirichlet Allocation." JMLR, 2003.

Input data (``features_col``): LDA is given a collection of documents as input data, via the ``features_col`` parameter. Each document is specified as a Vector of length ``vocab_size``, where each entry is the count for the corresponding term (word) in the document. Feature transformers such as `ft_tokenizer` and `ft_count_vectorizer` can be useful for converting text to word count vectors





## Value

The object returned depends on the class of ``x``.


  
*  `spark_connection`: When `x` is a `spark_connection`, the function returns an instance of a `ml_estimator` object. The object contains a pointer to
  a Spark `Estimator` object and can be used to compose
  `Pipeline` objects.

  
*  `ml_pipeline`: When `x` is a `ml_pipeline`, the function returns a `ml_pipeline` with
  the clustering estimator appended to the pipeline.

  
*  `tbl_spark`: When `x` is a `tbl_spark`, an estimator is constructed then
  immediately fit with the input `tbl_spark`, returning a clustering model.

  
*  `tbl_spark`, with `formula` or `features` specified: When `formula`
    is specified, the input `tbl_spark` is first transformed using a
    `RFormula` transformer before being fit by
    the estimator. The object returned in this case is a `ml_model` which is a
    wrapper of a `ml_pipeline_model`. This signature does not apply to `ml_lda()`.


``ml_describe_topics`` returns a DataFrame with topics and their top-weighted terms.

``ml_log_likelihood`` calculates a lower bound on the log likelihood of
  the entire corpus





## Examples

```r

library(janeaustenr)
library(dplyr)
sc <- spark_connect(master = "local")

lines_tbl <- sdf_copy_to(sc,
  austen_books()[c(1:30), ],
  name = "lines_tbl",
  overwrite = TRUE
)

# transform the data in a tidy form
lines_tbl_tidy <- lines_tbl %>%
  ft_tokenizer(
    input_col = "text",
    output_col = "word_list"
  ) %>%
  ft_stop_words_remover(
    input_col = "word_list",
    output_col = "wo_stop_words"
  ) %>%
  mutate(text = explode(wo_stop_words)) %>%
  filter(text != "") %>%
  select(text, book)

lda_model <- lines_tbl_tidy %>%
  ml_lda(~text, k = 4)

# vocabulary and topics
tidy(lda_model)

```






## See Also

See http://spark.apache.org/docs/latest/ml-clustering.html for
  more information on the set of clustering algorithms.

Other ml clustering algorithms: 
`ml_bisecting_kmeans()`,
`ml_gaussian_mixture()`,
`ml_kmeans()`



