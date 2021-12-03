# ml_evaluate


Evaluate the Model on a Validation Set




## Description

Compute performance metrics.





## Usage

ml_evaluate(x, dataset)

ml_evaluateml_model_logistic_regression(x, dataset)

ml_evaluateml_logistic_regression_model(x, dataset)

ml_evaluateml_model_linear_regression(x, dataset)

ml_evaluateml_linear_regression_model(x, dataset)

ml_evaluateml_model_generalized_linear_regression(x, dataset)

ml_evaluateml_generalized_linear_regression_model(x, dataset)

ml_evaluateml_model_clustering(x, dataset)

ml_evaluateml_model_classification(x, dataset)

ml_evaluateml_evaluator(x, dataset)





## Arguments


Argument      |Description
------------- |----------------
x | An ML model object or an evaluator object.
dataset | The dataset to be validate the model on.






## Examples

```r

sc <- spark_connect(master = "local")
iris_tbl <- sdf_copy_to(sc, iris, name = "iris_tbl", overwrite = TRUE)

ml_gaussian_mixture(iris_tbl, Species ~ .) %>%
  ml_evaluate(iris_tbl)

ml_kmeans(iris_tbl, Species ~ .) %>%
  ml_evaluate(iris_tbl)

ml_bisecting_kmeans(iris_tbl, Species ~ .) %>%
  ml_evaluate(iris_tbl)

```





