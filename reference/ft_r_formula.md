# `ft_r_formula`

Feature Transformation -- RFormula (Estimator)


## Description

Implements the transforms required for fitting a dataset against an R model
 formula. Currently we support a limited subset of the R operators,
 including `~` , `.` , `:` , `+` , and `-` . Also see the R formula docs here:
  [http://stat.ethz.ch/R-manual/R-patched/library/stats/html/formula.html](http://stat.ethz.ch/R-manual/R-patched/library/stats/html/formula.html)


## Usage

```r
ft_r_formula(
  x,
  formula = NULL,
  features_col = "features",
  label_col = "label",
  force_index_label = FALSE,
  uid = random_string("r_formula_"),
  ...
)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     A `spark_connection` , `ml_pipeline` , or a `tbl_spark` .
`formula`     |     R formula as a character string or a formula. Formula objects are converted to character strings directly and the environment is not captured.
`features_col`     |     Features column name, as a length-one character vector. The column should be single vector column of numeric values. Usually this column is output by [`ft_r_formula`](#ftrformula) .
`label_col`     |     Label column name. The column should be a numeric column. Usually this column is output by [`ft_r_formula`](#ftrformula) .
`force_index_label`     |     (Spark 2.1.0+) Force to index label whether it is numeric or string type. Usually we index label only when it is string type. If the formula was used by classification algorithms, we can force to index label even it is numeric type by setting this param with true. Default: `FALSE` .
`uid`     |     A character string used to uniquely identify the feature transformer.
`...`     |     Optional arguments; currently unused.


## Details

The basic operators in the formula are:
 
    

*  ~ separate target and terms  

*  + concat terms, "+ 0" means removing intercept  

*  - remove a term, "- 1" means removing intercept  

*  : interaction (multiplication for numeric values, or binarized categorical values)  

*  . all columns except target  
 
 Suppose a and b are double columns, we use the following simple examples to illustrate the
 effect of RFormula:
 
    

*   `y ~ a + b` means model `y ~ w0 + w1 * a + w2 * b`  where `w0` is the intercept and `w1, w2` are coefficients.  

*   `y ~ a + b + a:b - 1` means model `y ~ w1 * a + w2 * b + w3 * a * b`  where `w1, w2, w3` are coefficients.  
 
 RFormula produces a vector column of features and a double or string column
 of label. Like when formulas are used in R for linear regression, string
 input columns will be one-hot encoded, and numeric columns will be cast to
 doubles. If the label column is of type string, it will be first transformed
 to double with StringIndexer. If the label column does not exist in the
 DataFrame, the output label column will be created from the specified
 response variable in the formula.
 
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


