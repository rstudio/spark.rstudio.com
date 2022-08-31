# ft_string_indexer


Feature Transformation -- StringIndexer (Estimator)




## Description

A label indexer that maps a string column of labels to an ML column of
  label indices. If the input column is numeric, we cast it to string and
  index the string values. The indices are in ``[0, numLabels)``, ordered by
  label frequencies. So the most frequent label gets index 0. This function
  is the inverse of `ft_index_to_string`.





## Usage
```r
ft_string_indexer(
  x,
  input_col = NULL,
  output_col = NULL,
  handle_invalid = "error",
  string_order_type = "frequencyDesc",
  uid = random_string("string_indexer_"),
  ...
)

ml_labels(model)

ft_string_indexer_model(
  x,
  input_col = NULL,
  output_col = NULL,
  labels,
  handle_invalid = "error",
  uid = random_string("string_indexer_model_"),
  ...
)
```




## Arguments


Argument      |Description
------------- |----------------
x | A ``spark_connection``, ``ml_pipeline``, or a ``tbl_spark``.
input_col | The name of the input column.
output_col | The name of the output column.
handle_invalid | (Spark 2.1.0+) Param for how to handle invalid entries. Options are 'skip' (filter out rows with invalid values), 'error' (throw an error), or 'keep' (keep invalid values in a special additional bucket). Default: "error"
string_order_type | (Spark 2.3+)How to order labels of string column. The first label after ordering is assigned an index of 0. Options are ``"frequencyDesc"``, ``"frequencyAsc"``, ``"alphabetDesc"``, and ``"alphabetAsc"``. Defaults to ``"frequencyDesc"``.
uid | A character string used to uniquely identify the feature transformer.
... | Optional arguments; currently unused.
model | A fitted StringIndexer model returned by ``ft_string_indexer()``
labels | Vector of labels, corresponding to indices to be assigned.




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


``ml_labels()`` returns a vector of labels, corresponding to indices to be assigned.






## See Also

See https://spark.apache.org/docs/latest/ml-features.html for
  more information on the set of transformations available for DataFrame
  columns in Spark.

`ft_index_to_string`

Other feature transformers: 
`ft_binarizer()`,
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
`ft_tokenizer()`,
`ft_vector_assembler()`,
`ft_vector_indexer()`,
`ft_vector_slicer()`,
`ft_word2vec()`


