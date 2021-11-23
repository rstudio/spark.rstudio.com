# `ft_bucketizer`

Feature Transformation -- Bucketizer (Transformer)


## Description

Similar to list() 's [`cut`](#cut) function, this transforms a numeric column
 into a discretized column, with breaks specified through the `splits` 
 parameter.


## Usage

```r
ft_bucketizer(
  x,
  input_col = NULL,
  output_col = NULL,
  splits = NULL,
  input_cols = NULL,
  output_cols = NULL,
  splits_array = NULL,
  handle_invalid = "error",
  uid = random_string("bucketizer_"),
  ...
)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     A `spark_connection` , `ml_pipeline` , or a `tbl_spark` .
`input_col`     |     The name of the input column.
`output_col`     |     The name of the output column.
`splits`     |     A numeric vector of cutpoints, indicating the bucket boundaries.
`input_cols`     |     Names of input columns.
`output_cols`     |     Names of output columns.
`splits_array`     |     Parameter for specifying multiple splits parameters. Each element in this array can be used to map continuous features into buckets.
`handle_invalid`     |     (Spark 2.1.0+) Param for how to handle invalid entries. Options are 'skip' (filter out rows with invalid values), 'error' (throw an error), or 'keep' (keep invalid values in a special additional bucket). Default: "error"
`uid`     |     A character string used to uniquely identify the feature transformer.
`...`     |     Optional arguments; currently unused.


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
 [`ft_sql_transformer`](#ftsqltransformer) ,
 [`ft_standard_scaler`](#ftstandardscaler) ,
 [`ft_stop_words_remover`](#ftstopwordsremover) ,
 [`ft_string_indexer`](#ftstringindexer) ,
 [`ft_tokenizer`](#fttokenizer) ,
 [`ft_vector_assembler`](#ftvectorassembler) ,
 [`ft_vector_indexer`](#ftvectorindexer) ,
 [`ft_vector_slicer`](#ftvectorslicer) ,
 [`ft_word2vec`](#ftword2vec)


## Examples

```r
library(dplyr)

sc <- spark_connect(master = "local")
iris_tbl <- sdf_copy_to(sc, iris, name = "iris_tbl", overwrite = TRUE)

iris_tbl %>%
ft_bucketizer(
input_col = "Sepal_Length",
output_col = "Sepal_Length_bucket",
splits = c(0, 4.5, 5, 8)
) %>%
select(Sepal_Length, Sepal_Length_bucket, Species)
```


