# `ft_quantile_discretizer`

Feature Transformation -- QuantileDiscretizer (Estimator)


## Description

`ft_quantile_discretizer` takes a column with continuous features and outputs
 a column with binned categorical features. The number of bins can be
 set using the `num_buckets` parameter. It is possible that the number
 of buckets used will be smaller than this value, for example, if there
 are too few distinct values of the input to create enough distinct
 quantiles.


## Usage

```r
ft_quantile_discretizer(
  x,
  input_col = NULL,
  output_col = NULL,
  num_buckets = 2,
  input_cols = NULL,
  output_cols = NULL,
  num_buckets_array = NULL,
  handle_invalid = "error",
  relative_error = 0.001,
  uid = random_string("quantile_discretizer_"),
  weight_column = NULL,
  ...
)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     A `spark_connection` , `ml_pipeline` , or a `tbl_spark` .
`input_col`     |     The name of the input column.
`output_col`     |     The name of the output column.
`num_buckets`     |     Number of buckets (quantiles, or categories) into which data points are grouped. Must be greater than or equal to 2.
`input_cols`     |     Names of input columns.
`output_cols`     |     Names of output columns.
`num_buckets_array`     |     Array of number of buckets (quantiles, or categories) into which data points are grouped. Each value must be greater than or equal to 2.
`handle_invalid`     |     (Spark 2.1.0+) Param for how to handle invalid entries. Options are 'skip' (filter out rows with invalid values), 'error' (throw an error), or 'keep' (keep invalid values in a special additional bucket). Default: "error"
`relative_error`     |     (Spark 2.0.0+) Relative error (see documentation for org.apache.spark.sql.DataFrameStatFunctions.approxQuantile [here](https://spark.apache.org/docs/latest/api/scala/index.html#org.apache.spark.sql.DataFrameStatFunctions)  for description). Must be in the range [0, 1]. default: 0.001
`uid`     |     A character string used to uniquely identify the feature transformer.
`weight_column`     |     If not NULL, then a generalized version of the Greenwald-Khanna algorithm will be run to compute weighted percentiles, with each input having a relative weight specified by the corresponding value in `weight_column`. The weights can be considered as relative frequencies of sample inputs.
`...`     |     Optional arguments; currently unused.


## Details

NaN handling: null and NaN values will be ignored from the column
 during `QuantileDiscretizer` fitting. This will produce a `Bucketizer` 
 model for making predictions. During the transformation, `Bucketizer` 
 will raise an error when it finds NaN values in the dataset, but the
 user can also choose to either keep or remove NaN values within the
 dataset by setting `handle_invalid` If the user chooses to keep NaN values,
 they will be handled specially and placed into their own bucket,
 for example, if 4 buckets are used, then non-NaN data will be put
 into buckets[0-3], but NaNs will be counted in a special bucket[4].
 
 Algorithm: The bin ranges are chosen using an approximate algorithm (see
 the documentation for org.apache.spark.sql.DataFrameStatFunctions.approxQuantile
  [here](https://spark.apache.org/docs/latest/api/scala/index.html#org.apache.spark.sql.DataFrameStatFunctions) for a detailed description). The precision of the approximation can be
 controlled with the `relative_error` parameter. The lower and upper bin
 bounds will be -Infinity and +Infinity, covering all real values.
 
 Note that the result may be different every time you run it, since the sample
 strategy behind it is non-deterministic.
 
 In the case where `x` is a `tbl_spark` , the estimator fits against `x` 
 to obtain a transformer, which is then immediately used to transform `x` , returning a `tbl_spark` .


## Value

The object returned depends on the class of `x` .
 
   

*   `spark_connection` : When `x` is a `spark_connection` , the function returns a `ml_transformer` , a `ml_estimator` , or one of their subclasses. The object contains a pointer to a Spark `Transformer` or `Estimator` object and can be used to compose  `Pipeline` objects.   

*   `ml_pipeline` : When `x` is a `ml_pipeline` , the function returns a `ml_pipeline` with the transformer or estimator appended to the pipeline.   

*   `tbl_spark` : When `x` is a `tbl_spark` , a transformer is constructed then immediately applied to the input `tbl_spark` , returning a `tbl_spark`


## Seealso

See [http://spark.apache.org/docs/latest/ml-features.html](http://spark.apache.org/docs/latest/ml-features.html) for
 more information on the set of transformations available for DataFrame
 columns in Spark.
 
 [`ft_bucketizer`](#ftbucketizer) 
 
 Other feature transformers:
 [`ft_binarizer`](#ftbinarizer) ,
 [`ft_bucketizer`](#ftbucketizer) ,
 [`ft_chisq_selector`](#ftchisqselector) ,
 [`ft_count_vectorizer`](#ftcountvectorizer) ,
 [`ft_dct`](#ftdct) ,
 [`ft_elementwise_product`](#ftelementwiseproduct) ,
 [`ft_feature_hasher`](#ftfeaturehasher) ,
 [`ft_hashing_tf`](#fthashingtf) ,
 [`ft_idf`](#ftidf) ,
 [`ft_imputer`](#ftimputer) ,
 [`ft_index_to_string`](#ftindextostring) ,
 [`ft_interaction`](#ftinteraction) ,
 [`ft_lsh`](#ftlsh) ,
 [`ft_max_abs_scaler`](#ftmaxabsscaler) ,
 [`ft_min_max_scaler`](#ftminmaxscaler) ,
 [`ft_ngram`](#ftngram) ,
 [`ft_normalizer`](#ftnormalizer) ,
 [`ft_one_hot_encoder_estimator`](#ftonehotencoderestimator) ,
 [`ft_one_hot_encoder`](#ftonehotencoder) ,
 [`ft_pca`](#ftpca) ,
 [`ft_polynomial_expansion`](#ftpolynomialexpansion) ,
 [`ft_r_formula`](#ftrformula) ,
 [`ft_regex_tokenizer`](#ftregextokenizer) ,
 [`ft_robust_scaler`](#ftrobustscaler) ,
 [`ft_sql_transformer`](#ftsqltransformer) ,
 [`ft_standard_scaler`](#ftstandardscaler) ,
 [`ft_stop_words_remover`](#ftstopwordsremover) ,
 [`ft_string_indexer`](#ftstringindexer) ,
 [`ft_tokenizer`](#fttokenizer) ,
 [`ft_vector_assembler`](#ftvectorassembler) ,
 [`ft_vector_indexer`](#ftvectorindexer) ,
 [`ft_vector_slicer`](#ftvectorslicer) ,
 [`ft_word2vec`](#ftword2vec)


