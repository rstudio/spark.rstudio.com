# `ml_tree_tidiers`

Tidying methods for Spark ML tree models


## Description

These methods summarize the results of Spark ML models into tidy forms.


## Usage

```r
list(list("tidy"), list("ml_model_decision_tree_classification"))(x, ...)
list(list("tidy"), list("ml_model_decision_tree_regression"))(x, ...)
list(list("augment"), list("ml_model_decision_tree_classification"))(x, newdata = NULL, ...)
list(list("augment"), list("ml_model_decision_tree_regression"))(x, newdata = NULL, ...)
list(list("glance"), list("ml_model_decision_tree_classification"))(x, ...)
list(list("glance"), list("ml_model_decision_tree_regression"))(x, ...)
list(list("tidy"), list("ml_model_random_forest_classification"))(x, ...)
list(list("tidy"), list("ml_model_random_forest_regression"))(x, ...)
list(list("augment"), list("ml_model_random_forest_classification"))(x, newdata = NULL, ...)
list(list("augment"), list("ml_model_random_forest_regression"))(x, newdata = NULL, ...)
list(list("glance"), list("ml_model_random_forest_classification"))(x, ...)
list(list("glance"), list("ml_model_random_forest_regression"))(x, ...)
list(list("tidy"), list("ml_model_gbt_classification"))(x, ...)
list(list("tidy"), list("ml_model_gbt_regression"))(x, ...)
list(list("augment"), list("ml_model_gbt_classification"))(x, newdata = NULL, ...)
list(list("augment"), list("ml_model_gbt_regression"))(x, newdata = NULL, ...)
list(list("glance"), list("ml_model_gbt_classification"))(x, ...)
list(list("glance"), list("ml_model_gbt_regression"))(x, ...)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     a Spark ML model.
`...`     |     extra arguments (not used.)
`newdata`     |     a tbl_spark of new data to use for prediction.


