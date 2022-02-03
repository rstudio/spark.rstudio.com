# ft_idf


Feature Transformation -- IDF (Estimator)




## Description

Compute the Inverse Document Frequency (IDF) given a collection of documents.





## Usage
```r
ft_idf(
  x,
  input_col = NULL,
  output_col = NULL,
  min_doc_freq = 0,
  uid = random_string("idf_"),
  ...
)
```




## Arguments


Argument      |Description
------------- |----------------
x | A ``spark_connection``, ``ml_pipeline``, or a ``tbl_spark``.
input_col | The name of the input column.
output_col | The name of the output column.
min_doc_freq | The minimum number of documents in which a term should appear. Default: 0
uid | A character string used to uniquely identify the feature transformer.
... | Optional arguments; currently unused.




## Details

In the case where ``x`` is a ``tbl_spark``, the estimator fits against ``x``
  to obtain a transformer, which is then immediately used to transform ``x``, returning a ``tbl_spark``.





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







## See Also

See https://spark.apache.org/docs/latest/ml-features.html for
  more information on the set of transformations available for DataFrame
  columns in Spark.

Other feature transformers: 
`ft_binarizer()`,
`ft_bucketizer()`,
`ft_chisq_selector()`,
`ft_count_vectorizer()`,
`ft_dct()`,
`ft_elementwise_product()`,
`ft_feature_hasher()`,
`ft_hashing_tf()`,
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



