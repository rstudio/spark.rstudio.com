# `ft_feature_hasher`

Feature Transformation -- FeatureHasher (Transformer)


## Description

Feature Transformation -- FeatureHasher (Transformer)


## Usage

```r
ft_feature_hasher(
  x,
  input_cols = NULL,
  output_col = NULL,
  num_features = 2^18,
  categorical_cols = NULL,
  uid = random_string("feature_hasher_"),
  ...
)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     A `spark_connection` , `ml_pipeline` , or a `tbl_spark` .
`input_cols`     |     Names of input columns.
`output_col`     |     Name of output column.
`num_features`     |     Number of features. Defaults to $2^18$ .
`categorical_cols`     |     Numeric columns to treat as categorical features. By default only string and boolean columns are treated as categorical, so this param can be used to explicitly specify the numerical columns to treat as categorical.
`uid`     |     A character string used to uniquely identify the feature transformer.
`...`     |     Optional arguments; currently unused.


## Details

Feature hashing projects a set of categorical or numerical features into a
 feature vector of specified dimension (typically substantially smaller than
 that of the original feature space). This is done using the hashing trick
  [https://en.wikipedia.org/wiki/Feature_hashing](https://en.wikipedia.org/wiki/Feature_hashing) to map features to indices
 in the feature vector.
 
 The FeatureHasher transformer operates on multiple columns. Each column may
 contain either numeric or categorical features. Behavior and handling of
 column data types is as follows: -Numeric columns: For numeric features,
 the hash value of the column name is used to map the feature value to its
 index in the feature vector. By default, numeric features are not treated
 as categorical (even when they are integers). To treat them as categorical,
 specify the relevant columns in categoricalCols. -String columns: For
 categorical features, the hash value of the string "column_name=value"
 is used to map to the vector index, with an indicator value of 1.0.
 Thus, categorical features are "one-hot" encoded (similarly to using
 OneHotEncoder with drop_last=FALSE). -Boolean columns: Boolean values
 are treated in the same way as string columns. That is, boolean features
 are represented as "column_name=true" or "column_name=false", with an
 indicator value of 1.0.
 
 Null (missing) values are ignored (implicitly zero in the resulting feature vector).
 
 The hash function used here is also the MurmurHash 3 used in HashingTF. Since a
 simple modulo on the hashed value is used to determine the vector index, it is
 advisable to use a power of two as the num_features parameter; otherwise the
 features will not be mapped evenly to the vector indices.


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


