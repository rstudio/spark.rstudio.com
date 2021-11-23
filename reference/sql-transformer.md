# `ft_sql_transformer`

Feature Transformation -- SQLTransformer


## Description

Implements the transformations which are defined by SQL statement. Currently we
 only support SQL syntax like 'SELECT ... FROM __THIS__ ...' where '__THIS__' represents
 the underlying table of the input dataset. The select clause specifies the
 fields, constants, and expressions to display in the output, it can be any
 select clause that Spark SQL supports. Users can also use Spark SQL built-in
 function and UDFs to operate on these selected columns.


## Usage

```r
ft_sql_transformer(
  x,
  statement = NULL,
  uid = random_string("sql_transformer_"),
  ...
)
ft_dplyr_transformer(x, tbl, uid = random_string("dplyr_transformer_"), ...)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     A `spark_connection` , `ml_pipeline` , or a `tbl_spark` .
`statement`     |     A SQL statement.
`uid`     |     A character string used to uniquely identify the feature transformer.
`...`     |     Optional arguments; currently unused.
`tbl`     |     A `tbl_spark` generated using `dplyr` transformations.


## Details

`ft_dplyr_transformer()` is mostly a wrapper around `ft_sql_transformer()` that
 takes a `tbl_spark` instead of a SQL statement. Internally, the `ft_dplyr_transformer()` 
 extracts the `dplyr` transformations used to generate `tbl` as a SQL statement or a
 sampling operation. Note that only single-table `dplyr` verbs are supported and that the
  `sdf_` family of functions are not.


## Value

The object returned depends on the class of `x` .
 
   

*   `spark_connection` : When `x` is a `spark_connection` , the function returns a `ml_transformer` , a `ml_estimator` , or one of their subclasses. The object contains a pointer to a Spark `Transformer` or `Estimator` object and can be used to compose  `Pipeline` objects.   

*   `ml_pipeline` : When `x` is a `ml_pipeline` , the function returns a `ml_pipeline` with the transformer or estimator appended to the pipeline.   

*   `tbl_spark` : When `x` is a `tbl_spark` , a transformer is constructed then immediately applied to the input `tbl_spark` , returning a `tbl_spark`


## Seealso

See [http://spark.apache.org/docs/latest/ml-features.html](http://spark.apache.org/docs/latest/ml-features.html) for
 more information on the set of transformations available for DataFrame
 columns in Spark.
 
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
 [`ft_quantile_discretizer`](#ftquantilediscretizer) ,
 [`ft_r_formula`](#ftrformula) ,
 [`ft_regex_tokenizer`](#ftregextokenizer) ,
 [`ft_robust_scaler`](#ftrobustscaler) ,
 [`ft_standard_scaler`](#ftstandardscaler) ,
 [`ft_stop_words_remover`](#ftstopwordsremover) ,
 [`ft_string_indexer`](#ftstringindexer) ,
 [`ft_tokenizer`](#fttokenizer) ,
 [`ft_vector_assembler`](#ftvectorassembler) ,
 [`ft_vector_indexer`](#ftvectorindexer) ,
 [`ft_vector_slicer`](#ftvectorslicer) ,
 [`ft_word2vec`](#ftword2vec)


