# `ml_glm_tidiers`

Tidying methods for Spark ML linear models


## Description

These methods summarize the results of Spark ML models into tidy forms.


## Usage

```r
list(list("tidy"), list("ml_model_generalized_linear_regression"))(x, exponentiate = FALSE, ...)
list(list("tidy"), list("ml_model_linear_regression"))(x, ...)
list(list("augment"), list("ml_model_generalized_linear_regression"))(
  x,
  newdata = NULL,
  type.residuals = c("working", "deviance", "pearson", "response"),
  ...
)
list(list("augment"), list("ml_model_linear_regression"))(
  x,
  newdata = NULL,
  type.residuals = c("working", "deviance", "pearson", "response"),
  ...
)
list(list("glance"), list("ml_model_generalized_linear_regression"))(x, ...)
list(list("glance"), list("ml_model_linear_regression"))(x, ...)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     a Spark ML model.
`exponentiate`     |     For GLM, whether to exponentiate the coefficient estimates (typical for logistic regression.)
`...`     |     extra arguments (not used.)
`newdata`     |     a tbl_spark of new data to use for prediction.
`type.residuals`     |     type of residuals, defaults to `"working"` . Must be set to `"working"` when `newdata` is supplied.


## Details

The residuals attached by `augment` are of type "working" by default,
 which is different from the default of "deviance" for `residuals()` or `sdf_residuals()` .


