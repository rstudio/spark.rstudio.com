# ml_decision_tree_classifier


Spark ML -- Decision Trees




## Description

Perform classification and regression using decision trees.





## Usage
```r
ml_decision_tree_classifier(
  x,
  formula = NULL,
  max_depth = 5,
  max_bins = 32,
  min_instances_per_node = 1,
  min_info_gain = 0,
  impurity = "gini",
  seed = NULL,
  thresholds = NULL,
  cache_node_ids = FALSE,
  checkpoint_interval = 10,
  max_memory_in_mb = 256,
  features_col = "features",
  label_col = "label",
  prediction_col = "prediction",
  probability_col = "probability",
  raw_prediction_col = "rawPrediction",
  uid = random_string("decision_tree_classifier_"),
  ...
)

ml_decision_tree(
  x,
  formula = NULL,
  type = c("auto", "regression", "classification"),
  features_col = "features",
  label_col = "label",
  prediction_col = "prediction",
  variance_col = NULL,
  probability_col = "probability",
  raw_prediction_col = "rawPrediction",
  checkpoint_interval = 10L,
  impurity = "auto",
  max_bins = 32L,
  max_depth = 5L,
  min_info_gain = 0,
  min_instances_per_node = 1L,
  seed = NULL,
  thresholds = NULL,
  cache_node_ids = FALSE,
  max_memory_in_mb = 256L,
  uid = random_string("decision_tree_"),
  response = NULL,
  features = NULL,
  ...
)

ml_decision_tree_regressor(
  x,
  formula = NULL,
  max_depth = 5,
  max_bins = 32,
  min_instances_per_node = 1,
  min_info_gain = 0,
  impurity = "variance",
  seed = NULL,
  cache_node_ids = FALSE,
  checkpoint_interval = 10,
  max_memory_in_mb = 256,
  variance_col = NULL,
  features_col = "features",
  label_col = "label",
  prediction_col = "prediction",
  uid = random_string("decision_tree_regressor_"),
  ...
)
```




## Arguments


Argument      |Description
------------- |----------------
x | A ``spark_connection``, ``ml_pipeline``, or a ``tbl_spark``.
formula | Used when ``x`` is a ``tbl_spark``. R formula as a character string or a formula. This is used to transform the input dataframe before fitting, see ft_r_formula for details.
max_depth | Maximum depth of the tree (>= 0); that is, the maximum
number of nodes separating any leaves from the root of the tree.
max_bins | The maximum number of bins used for discretizing
continuous features and for choosing how to split on features at
each node. More bins give higher granularity.
min_instances_per_node | Minimum number of instances each child must
have after split.
min_info_gain | Minimum information gain for a split to be considered
at a tree node. Should be >= 0, defaults to 0.
impurity | Criterion used for information gain calculation. Supported: "entropy"
and "gini" (default) for classification and "variance" (default) for regression. For
``ml_decision_tree``, setting ``"auto"`` will default to the appropriate
criterion based on model type.
seed | Seed for random numbers.
thresholds | Thresholds in multi-class classification to adjust the probability of predicting each class. Array must have length equal to the number of classes, with values > 0 excepting that at most one value may be 0. The class with largest value ``p/t`` is predicted, where ``p`` is the original probability of that class and ``t`` is the class's threshold.
cache_node_ids | If ``FALSE``, the algorithm will pass trees to executors to match instances with nodes.
If ``TRUE``, the algorithm will cache node IDs for each instance. Caching can speed up training of deeper trees.
Defaults to ``FALSE``.
checkpoint_interval | Set checkpoint interval (>= 1) or disable checkpoint (-1).
E.g. 10 means that the cache will get checkpointed every 10 iterations, defaults to 10.
max_memory_in_mb | Maximum memory in MB allocated to histogram aggregation.
If too small, then 1 node will be split per iteration,
and its aggregates may exceed this size. Defaults to 256.
features_col | Features column name, as a length-one character vector. The column should be single vector column of numeric values. Usually this column is output by `ft_r_formula`.
label_col | Label column name. The column should be a numeric column. Usually this column is output by `ft_r_formula`.
prediction_col | Prediction column name.
probability_col | Column name for predicted class conditional probabilities.
raw_prediction_col | Raw prediction (a.k.a. confidence) column name.
uid | A character string used to uniquely identify the ML estimator.
... | Optional arguments; see Details.
type | The type of model to fit. ``"regression"`` treats the response
as a continuous variable, while ``"classification"`` treats the response
as a categorical variable. When ``"auto"`` is used, the model type is
inferred based on the response variable type -- if it is a numeric type,
then regression is used; classification otherwise.
variance_col | (Optional) Column name for the biased sample variance of prediction.
response | (Deprecated) The name of the response column (as a length-one character vector.)
features | (Deprecated) The name of features (terms) to use for the model fit.




## Details

When ``x`` is a ``tbl_spark`` and ``formula`` (alternatively, ``response`` and ``features``) is specified, the function returns a ``ml_model`` object wrapping a ``ml_pipeline_model`` which contains data pre-processing transformers, the ML predictor, and, for classification models, a post-processing transformer that converts predictions into class labels. For classification, an optional argument ``predicted_label_col`` (defaults to ``"predicted_label"``) can be used to specify the name of the predicted label column. In addition to the fitted ``ml_pipeline_model``, ``ml_model`` objects also contain a ``ml_pipeline`` object where the ML predictor stage is an estimator ready to be fit against data. This is utilized by `ml_save` with ``type = "pipeline"`` to faciliate model refresh workflows.

``ml_decision_tree`` is a wrapper around ``ml_decision_tree_regressor.tbl_spark`` and ``ml_decision_tree_classifier.tbl_spark`` and calls the appropriate method based on model type.





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

dt_model <- iris_training %>%
  ml_decision_tree(Species ~ .)

pred <- ml_predict(dt_model, iris_test)

ml_multiclass_classification_evaluator(pred)

```






## See Also

See https://spark.apache.org/docs/latest/ml-classification-regression.html for
  more information on the set of supervised learning algorithms.

Other ml algorithms: 
`ml_aft_survival_regression()`,
`ml_gbt_classifier()`,
`ml_generalized_linear_regression()`,
`ml_isotonic_regression()`,
`ml_linear_regression()`,
`ml_linear_svc()`,
`ml_logistic_regression()`,
`ml_multilayer_perceptron_classifier()`,
`ml_naive_bayes()`,
`ml_one_vs_rest()`,
`ml_random_forest_classifier()`



