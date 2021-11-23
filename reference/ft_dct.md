# `ft_dct`

Feature Transformation -- Discrete Cosine Transform (DCT) (Transformer)


## Description

A feature transformer that takes the 1D discrete cosine transform of a real
 vector. No zero padding is performed on the input vector. It returns a real
 vector of the same length representing the DCT. The return vector is scaled
 such that the transform matrix is unitary (aka scaled DCT-II).


## Usage

```r
ft_dct(
  x,
  input_col = NULL,
  output_col = NULL,
  inverse = FALSE,
  uid = random_string("dct_"),
  ...
)
ft_discrete_cosine_transform(
  x,
  input_col,
  output_col,
  inverse = FALSE,
  uid = random_string("dct_"),
  ...
)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     A `spark_connection` , `ml_pipeline` , or a `tbl_spark` .
`input_col`     |     The name of the input column.
`output_col`     |     The name of the output column.
`inverse`     |     Indicates whether to perform the inverse DCT (TRUE) or forward DCT (FALSE).
`uid`     |     A character string used to uniquely identify the feature transformer.
`...`     |     Optional arguments; currently unused.


## Details

`ft_discrete_cosine_transform()` is an alias for `ft_dct` for backwards compatibility.


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


