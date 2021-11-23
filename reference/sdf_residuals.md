# `sdf_residuals.ml_model_generalized_linear_regression`

Model Residuals


## Description

This generic method returns a Spark DataFrame with model
 residuals added as a column to the model training data.


## Usage

```r
list(list("sdf_residuals"), list("ml_model_generalized_linear_regression"))(
  object,
  type = c("deviance", "pearson", "working", "response"),
  ...
)
list(list("sdf_residuals"), list("ml_model_linear_regression"))(object, ...)
sdf_residuals(object, ...)
```


## Arguments

Argument      |Description
------------- |----------------
`object`     |     Spark ML model object.
`type`     |     type of residuals which should be returned.
`...`     |     additional arguments


