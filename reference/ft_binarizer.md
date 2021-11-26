# ft_binarizer


Feature Transformation -- Binarizer (Transformer)




## Description

Apply thresholding to a column, such that values less than or equal to the
``threshold`` are assigned the value 0.0, and values greater than the
threshold are assigned the value 1.0. Column output is numeric for
compatibility with other modeling functions.





## Usage
```r
ft_binarizer(
  x,
  input_col,
  output_col,
  threshold = 0,
  uid = random_string("binarizer_"),
  ...
)
```




## Arguments


Argument      |Description
------------- |----------------
x | A ``spark_connection``, ``ml_pipeline``, or a ``tbl_spark``.
input_col | The name of the input column.
output_col | The name of the output column.
threshold | Threshold used to binarize continuous features.
uid | A character string used to uniquely identify the feature transformer.
... | Optional arguments; currently unused.





## Value

The object returned depends on the class of ``x``.


  
*  `spark_connection`: When `x` is a `spark_connection`, the function returns a `ml_transformer`,
  a `ml_estimator`, or one of their subclasses. The object contains a pointer to
  a Spark `Transformer` or `Estimator` object and can be used to compose
  `Pipeline` objects.

  
*  `ml_pipeline`: When `x` is a `ml_pipeline`, the function returns a `ml_pipeline` with
  the transformer or estimator appended to the pipeline.

  
*  `tbl_spark`: When `x` is a `tbl_spark`, a transformer is constructed then
  immediately applied to the input `tbl_spark`, returning a `tbl_spark`






## Examples

```r

library(dplyr)

sc <- spark_connect(master = "local")
iris_tbl <- sdf_copy_to(sc, iris, name = "iris_tbl", overwrite = TRUE)

iris_tbl %>%
  ft_binarizer(
    input_col = "Sepal_Length",
    output_col = "Sepal_Length_bin",
    threshold = 5
  ) %>%
  select(Sepal_Length, Sepal_Length_bin, Species)

```






## See Also

See http://spark.apache.org/docs/latest/ml-features.html for
  more information on the set of transformations available for DataFrame
  columns in Spark.

Other feature transformers: 
`ft_bucketizer()`,
`ft_chisq_selector()`,
`ft_count_vectorizer()`,
`ft_dct()`,
`ft_elementwise_product()`,
`ft_feature_hasher()`,
`ft_hashing_tf()`,
`ft_idf()`,
`ft_imputer()`,
`ft_index_to_string()`,
`ft_interaction()`,
`ft_lsh`,
`ft_max_abs_scaler()`,
`ft_min_max_scaler()`,
`ft_ngram()`,
`ft_normalizer()`,
`ft_one_hot_encoder_estimator()`,
`ft_one_hot_encoder()`,
`ft_pca()`,
`ft_polynomial_expansion()`,
`ft_quantile_discretizer()`,
`ft_r_formula()`,
`ft_regex_tokenizer()`,
`ft_robust_scaler()`,
`ft_sql_transformer()`,
`ft_standard_scaler()`,
`ft_stop_words_remover()`,
`ft_string_indexer()`,
`ft_tokenizer()`,
`ft_vector_assembler()`,
`ft_vector_indexer()`,
`ft_vector_slicer()`,
`ft_word2vec()`



