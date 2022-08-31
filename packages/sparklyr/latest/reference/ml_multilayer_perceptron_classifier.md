# ml_multilayer_perceptron_classifier


Spark ML -- Multilayer Perceptron




## Description

Classification model based on the Multilayer Perceptron. Each layer has sigmoid activation function, output layer has softmax.





## Usage
```r
ml_multilayer_perceptron_classifier(
  x,
  formula = NULL,
  layers = NULL,
  max_iter = 100,
  step_size = 0.03,
  tol = 1e-06,
  block_size = 128,
  solver = "l-bfgs",
  seed = NULL,
  initial_weights = NULL,
  thresholds = NULL,
  features_col = "features",
  label_col = "label",
  prediction_col = "prediction",
  probability_col = "probability",
  raw_prediction_col = "rawPrediction",
  uid = random_string("multilayer_perceptron_classifier_"),
  ...
)

ml_multilayer_perceptron(
  x,
  formula = NULL,
  layers,
  max_iter = 100,
  step_size = 0.03,
  tol = 1e-06,
  block_size = 128,
  solver = "l-bfgs",
  seed = NULL,
  initial_weights = NULL,
  features_col = "features",
  label_col = "label",
  thresholds = NULL,
  prediction_col = "prediction",
  probability_col = "probability",
  raw_prediction_col = "rawPrediction",
  uid = random_string("multilayer_perceptron_classifier_"),
  response = NULL,
  features = NULL,
  ...
)
```




## Arguments


Argument      |Description
------------- |----------------
x | A ``spark_connection``, ``ml_pipeline``, or a ``tbl_spark``.
formula | Used when ``x`` is a ``tbl_spark``. R formula as a character string or a formula. This is used to transform the input dataframe before fitting, see ft_r_formula for details.
layers | A numeric vector describing the layers -- each element in the vector gives the size of a layer. For example, ``c(4, 5, 2)`` would imply three layers, with an input (feature) layer of size 4, an intermediate layer of size 5, and an output (class) layer of size 2.
max_iter | The maximum number of iterations to use.
step_size | Step size to be used for each iteration of optimization (> 0).
tol | Param for the convergence tolerance for iterative algorithms.
block_size | Block size for stacking input data in matrices to speed up the computation. Data is stacked within partitions. If block size is more than remaining data in a partition then it is adjusted to the size of this data. Recommended size is between 10 and 1000. Default: 128
solver | The solver algorithm for optimization. Supported options: "gd" (minibatch gradient descent) or "l-bfgs". Default: "l-bfgs"
seed | A random seed. Set this value if you need your results to be reproducible across repeated calls.
initial_weights | The initial weights of the model.
thresholds | Thresholds in multi-class classification to adjust the probability of predicting each class. Array must have length equal to the number of classes, with values > 0 excepting that at most one value may be 0. The class with largest value ``p/t`` is predicted, where ``p`` is the original probability of that class and ``t`` is the class's threshold.
features_col | Features column name, as a length-one character vector. The column should be single vector column of numeric values. Usually this column is output by `ft_r_formula`.
label_col | Label column name. The column should be a numeric column. Usually this column is output by `ft_r_formula`.
prediction_col | Prediction column name.
probability_col | Column name for predicted class conditional probabilities.
raw_prediction_col | Raw prediction (a.k.a. confidence) column name.
uid | A character string used to uniquely identify the ML estimator.
... | Optional arguments; see Details.
response | (Deprecated) The name of the response column (as a length-one character vector.)
features | (Deprecated) The name of features (terms) to use for the model fit.




## Details

When ``x`` is a ``tbl_spark`` and ``formula`` (alternatively, ``response`` and ``features``) is specified, the function returns a ``ml_model`` object wrapping a ``ml_pipeline_model`` which contains data pre-processing transformers, the ML predictor, and, for classification models, a post-processing transformer that converts predictions into class labels. For classification, an optional argument ``predicted_label_col`` (defaults to ``"predicted_label"``) can be used to specify the name of the predicted label column. In addition to the fitted ``ml_pipeline_model``, ``ml_model`` objects also contain a ``ml_pipeline`` object where the ML predictor stage is an estimator ready to be fit against data. This is utilized by `ml_save` with ``type = "pipeline"`` to faciliate model refresh workflows.

``ml_multilayer_perceptron()`` is an alias for ``ml_multilayer_perceptron_classifier()`` for backwards compatibility.





## Value

The object returned depends on the class of ``x``.


  
*  `spark_connection`: When `x` is a `spark_connection`, the function returns an instance of a `ml_estimator` object. The object contains a pointer to
  a Spark `Predictor` object and can be used to compose
  `Pipeline` objects.

  
*  `ml_pipeline`: When `x` is a `ml_pipeline`, the function returns a `ml_pipeline` with
  the predictor appended to the pipeline.

  
*  `tbl_spark`: When `x` is a `tbl_spark`, a predictor is constructed then
  immediately fit with the input `tbl_spark`, returning a prediction model.

  
*  `tbl_spark`, with `formula`: specified When `formula`
    is specified, the input `tbl_spark` is first transformed using a
    `RFormula` transformer before being fit by
    the predictor. The object returned in this case is a `ml_model` which is a
    wrapper of a `ml_pipeline_model`.






## Examples

```r

sc <- spark_connect(master = "local")

iris_tbl <- sdf_copy_to(sc, iris, name = "iris_tbl", overwrite = TRUE)
partitions <- iris_tbl %>%
  sdf_random_split(training = 0.7, test = 0.3, seed = 1111)

iris_training <- partitions$training
iris_test <- partitions$test

mlp_model <- iris_training %>%
  ml_multilayer_perceptron_classifier(Species ~ ., layers = c(4, 3, 3))

pred <- ml_predict(mlp_model, iris_test)

ml_multiclass_classification_evaluator(pred)

```






## See Also

See https://spark.apache.org/docs/latest/ml-classification-regression.html for
  more information on the set of supervised learning algorithms.

Other ml algorithms: 
`ml_aft_survival_regression()`,
`ml_decision_tree_classifier()`,
`ml_gbt_classifier()`,
`ml_generalized_linear_regression()`,
`ml_isotonic_regression()`,
`ml_linear_regression()`,
`ml_linear_svc()`,
`ml_logistic_regression()`,
`ml_naive_bayes()`,
`ml_one_vs_rest()`,
`ml_random_forest_classifier()`


