# `ml_gaussian_mixture`

Spark ML -- Gaussian Mixture clustering.


## Description

This class performs expectation maximization for multivariate Gaussian Mixture Models (GMMs). A GMM represents a composite distribution of independent Gaussian distributions with associated "mixing" weights specifying each's contribution to the composite. Given a set of sample points, this class will maximize the log-likelihood for a mixture of k Gaussians, iterating until the log-likelihood changes by less than `tol` , or until it has reached the max number of iterations. While this process is generally guaranteed to converge, it is not guaranteed to find a global optimum.


## Usage

```r
ml_gaussian_mixture(
  x,
  formula = NULL,
  k = 2,
  max_iter = 100,
  tol = 0.01,
  seed = NULL,
  features_col = "features",
  prediction_col = "prediction",
  probability_col = "probability",
  uid = random_string("gaussian_mixture_"),
  ...
)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     A `spark_connection` , `ml_pipeline` , or a `tbl_spark` .
`formula`     |     Used when `x` is a `tbl_spark` . R formula as a character string or a formula. This is used to transform the input dataframe before fitting, see [ft_r_formula](#ftrformula) for details.
`k`     |     The number of clusters to create
`max_iter`     |     The maximum number of iterations to use.
`tol`     |     Param for the convergence tolerance for iterative algorithms.
`seed`     |     A random seed. Set this value if you need your results to be reproducible across repeated calls.
`features_col`     |     Features column name, as a length-one character vector. The column should be single vector column of numeric values. Usually this column is output by [`ft_r_formula`](#ftrformula) .
`prediction_col`     |     Prediction column name.
`probability_col`     |     Column name for predicted class conditional probabilities. Note: Not all models output well-calibrated probability estimates! These probabilities should be treated as confidences, not precise probabilities.
`uid`     |     A character string used to uniquely identify the ML estimator.
`...`     |     Optional arguments, see Details.


## Value

The object returned depends on the class of `x` .
 
   

*   `spark_connection` : When `x` is a `spark_connection` , the function returns an instance of a `ml_estimator` object. The object contains a pointer to a Spark `Estimator` object and can be used to compose  `Pipeline` objects.   

*   `ml_pipeline` : When `x` is a `ml_pipeline` , the function returns a `ml_pipeline` with the clustering estimator appended to the pipeline.   

*   `tbl_spark` : When `x` is a `tbl_spark` , an estimator is constructed then immediately fit with the input `tbl_spark` , returning a clustering model.   

*   `tbl_spark` , with `formula` or `features` specified: When `formula`  is specified, the input `tbl_spark` is first transformed using a  `RFormula` transformer before being fit by the estimator. The object returned in this case is a `ml_model` which is a wrapper of a `ml_pipeline_model` . This signature does not apply to `ml_lda()` .


## Seealso

See [http://spark.apache.org/docs/latest/ml-clustering.html](http://spark.apache.org/docs/latest/ml-clustering.html) for
 more information on the set of clustering algorithms.
 
 Other ml clustering algorithms:
 [`ml_bisecting_kmeans`](#mlbisectingkmeans) ,
 [`ml_kmeans`](#mlkmeans) ,
 [`ml_lda`](#mllda)


## Examples

```r
sc <- spark_connect(master = "local")
iris_tbl <- sdf_copy_to(sc, iris, name = "iris_tbl", overwrite = TRUE)

gmm_model <- ml_gaussian_mixture(iris_tbl, Species ~ .)
pred <- sdf_predict(iris_tbl, gmm_model)
ml_clustering_evaluator(pred)
```


