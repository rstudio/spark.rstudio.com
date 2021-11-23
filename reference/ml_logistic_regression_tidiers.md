# `ml_logistic_regression_tidiers`

Tidying methods for Spark ML Logistic Regression


## Description

These methods summarize the results of Spark ML models into tidy forms.


## Usage

```r
list(list("tidy"), list("ml_model_logistic_regression"))(x, ...)
list(list("augment"), list("ml_model_logistic_regression"))(x, newdata = NULL, ...)
list(list("glance"), list("ml_model_logistic_regression"))(x, ...)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     a Spark ML model.
`...`     |     extra arguments (not used.)
`newdata`     |     a tbl_spark of new data to use for prediction.


