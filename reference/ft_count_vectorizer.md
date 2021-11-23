# `ft_count_vectorizer`

Feature Transformation -- CountVectorizer (Estimator)


## Description

Extracts a vocabulary from document collections.


## Usage

```r
ft_count_vectorizer(
  x,
  input_col = NULL,
  output_col = NULL,
  binary = FALSE,
  min_df = 1,
  min_tf = 1,
  vocab_size = 2^18,
  uid = random_string("count_vectorizer_"),
  ...
)
ml_vocabulary(model)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     A `spark_connection` , `ml_pipeline` , or a `tbl_spark` .
`input_col`     |     The name of the input column.
`output_col`     |     The name of the output column.
`binary`     |     Binary toggle to control the output vector values. If `TRUE` , all nonzero counts (after `min_tf` filter applied) are set to 1. This is useful for discrete probabilistic models that model binary events rather than integer counts. Default: `FALSE`
`min_df`     |     Specifies the minimum number of different documents a term must appear in to be included in the vocabulary. If this is an integer greater than or equal to 1, this specifies the number of documents the term must appear in; if this is a double in [0,1), then this specifies the fraction of documents. Default: 1.
`min_tf`     |     Filter to ignore rare words in a document. For each document, terms with frequency/count less than the given threshold are ignored. If this is an integer greater than or equal to 1, then this specifies a count (of times the term must appear in the document); if this is a double in [0,1), then this specifies a fraction (out of the document's token count). Default: 1.
`vocab_size`     |     Build a vocabulary that only considers the top `vocab_size` terms ordered by term frequency across the corpus. Default: `2^18` .
`uid`     |     A character string used to uniquely identify the feature transformer.
`...`     |     Optional arguments; currently unused.
`model`     |     A `ml_count_vectorizer_model` .


## Details

In the case where `x` is a `tbl_spark` , the estimator fits against `x` 
 to obtain a transformer, which is then immediately used to transform `x` , returning a `tbl_spark` .


## Value

The object returned depends on the class of `x` .
 
   

*   `spark_connection` : When `x` is a `spark_connection` , the function returns a `ml_transformer` , a `ml_estimator` , or one of their subclasses. The object contains a pointer to a Spark `Transformer` or `Estimator` object and can be used to compose  `Pipeline` objects.   

*   `ml_pipeline` : When `x` is a `ml_pipeline` , the function returns a `ml_pipeline` with the transformer or estimator appended to the pipeline.   

*   `tbl_spark` : When `x` is a `tbl_spark` , a transformer is constructed then immediately applied to the input `tbl_spark` , returning a `tbl_spark`  
 
 `ml_vocabulary()` returns a vector of vocabulary built.


## Seealso

See [http://spark.apache.org/docs/latest/ml-features.html](http://spark.apache.org/docs/latest/ml-features.html) for
 more information on the set of transformations available for DataFrame
 columns in Spark.
 
 Other feature transformers:
 [`ft_binarizer`](#ftbinarizer) ,
 [`ft_bucketizer`](#ftbucketizer) ,
 [`ft_chisq_selector`](#ftchisqselector) ,
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


