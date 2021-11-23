# `ml_linear_svc`

Spark ML -- LinearSVC


## Description

Perform classification using linear support vector machines (SVM). This binary classifier optimizes the Hinge Loss using the OWLQN optimizer. Only supports L2 regularization currently.


## Usage

```r
ml_linear_svc(
  x,
  formula = NULL,
  fit_intercept = TRUE,
  reg_param = 0,
  max_iter = 100,
  standardization = TRUE,
  weight_col = NULL,
  tol = 1e-06,
  threshold = 0,
  aggregation_depth = 2,
  features_col = "features",
  label_col = "label",
  prediction_col = "prediction",
  raw_prediction_col = "rawPrediction",
  uid = random_string("linear_svc_"),
  ...
)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     A `spark_connection` , `ml_pipeline` , or a `tbl_spark` .
`formula`     |     Used when `x` is a `tbl_spark` . R formula as a character string or a formula. This is used to transform the input dataframe before fitting, see [ft_r_formula](#ftrformula) for details.
`fit_intercept`     |     Boolean; should the model be fit with an intercept term?
`reg_param`     |     Regularization parameter (aka lambda)
`max_iter`     |     The maximum number of iterations to use.
`standardization`     |     Whether to standardize the training features before fitting the model.
`weight_col`     |     The name of the column to use as weights for the model fit.
`tol`     |     Param for the convergence tolerance for iterative algorithms.
`threshold`     |     in binary classification prediction, in range [0, 1].
`aggregation_depth`     |     (Spark 2.1.0+) Suggested depth for treeAggregate (>= 2).
`features_col`     |     Features column name, as a length-one character vector. The column should be single vector column of numeric values. Usually this column is output by [`ft_r_formula`](#ftrformula) .
`label_col`     |     Label column name. The column should be a numeric column. Usually this column is output by [`ft_r_formula`](#ftrformula) .
`prediction_col`     |     Prediction column name.
`raw_prediction_col`     |     Raw prediction (a.k.a. confidence) column name.
`uid`     |     A character string used to uniquely identify the ML estimator.
`...`     |     Optional arguments; see Details.


## Details

When `x` is a `tbl_spark` and `formula` (alternatively, `response` and `features` ) is specified, the function returns a `ml_model` object wrapping a `ml_pipeline_model` which contains data pre-processing transformers, the ML predictor, and, for classification models, a post-processing transformer that converts predictions into class labels. For classification, an optional argument `predicted_label_col` (defaults to `"predicted_label"` ) can be used to specify the name of the predicted label column. In addition to the fitted `ml_pipeline_model` , `ml_model` objects also contain a `ml_pipeline` object where the ML predictor stage is an estimator ready to be fit against data. This is utilized by [`ml_save`](#mlsave) with `type = "pipeline"` to faciliate model refresh workflows.


## Value

The object returned depends on the class of `x` .
 
   

*   `spark_connection` : When `x` is a `spark_connection` , the function returns an instance of a `ml_estimator` object. The object contains a pointer to a Spark `Predictor` object and can be used to compose  `Pipeline` objects.   

*   `ml_pipeline` : When `x` is a `ml_pipeline` , the function returns a `ml_pipeline` with the predictor appended to the pipeline.   

*   `tbl_spark` : When `x` is a `tbl_spark` , a predictor is constructed then immediately fit with the input `tbl_spark` , returning a prediction model.   

*   `tbl_spark` , with `formula` : specified When `formula`  is specified, the input `tbl_spark` is first transformed using a  `RFormula` transformer before being fit by the predictor. The object returned in this case is a `ml_model` which is a wrapper of a `ml_pipeline_model` .


## Seealso

See [http://spark.apache.org/docs/latest/ml-classification-regression.html](http://spark.apache.org/docs/latest/ml-classification-regression.html) for
 more information on the set of supervised learning algorithms.
 
 Other ml algorithms:
 [`ml_aft_survival_regression`](#mlaftsurvivalregression) ,
 [`ml_decision_tree_classifier`](#mldecisiontreeclassifier) ,
 [`ml_gbt_classifier`](#mlgbtclassifier) ,
 [`ml_generalized_linear_regression`](#mlgeneralizedlinearregression) ,
 [`ml_isotonic_regression`](#mlisotonicregression) ,
 [`ml_linear_regression`](#mllinearregression) ,
 [`ml_logistic_regression`](#mllogisticregression) ,
 [`ml_multilayer_perceptron_classifier`](#mlmultilayerperceptronclassifier) ,
 [`ml_naive_bayes`](#mlnaivebayes) ,
 [`ml_one_vs_rest`](#mlonevsrest) ,
 [`ml_random_forest_classifier`](#mlrandomforestclassifier)


## Examples

```r
library(dplyr)

sc <- spark_connect(master = "local")
iris_tbl <- sdf_copy_to(sc, iris, name = "iris_tbl", overwrite = TRUE)

partitions <- iris_tbl %>%
filter(Species != "setosa") %>%
sdf_random_split(training = 0.7, test = 0.3, seed = 1111)

iris_training <- partitions$training
iris_test <- partitions$test

svc_model <- iris_training %>%
ml_linear_svc(Species ~ .)

pred <- ml_predict(svc_model, iris_test)

ml_binary_classification_evaluator(pred)
```


