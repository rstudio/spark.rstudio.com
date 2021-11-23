# `ml_linear_svc_tidiers`

Tidying methods for Spark ML linear svc


## Description

These methods summarize the results of Spark ML models into tidy forms.


## Usage

```r
list(list("tidy"), list("ml_model_linear_svc"))(x, ...)
list(list("augment"), list("ml_model_linear_svc"))(x, newdata = NULL, ...)
list(list("glance"), list("ml_model_linear_svc"))(x, ...)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     a Spark ML model.
`...`     |     extra arguments (not used.)
`newdata`     |     a tbl_spark of new data to use for prediction.


