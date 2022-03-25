# ml_glm_tidiers


Tidying methods for Spark ML linear models




## Description

These methods summarize the results of Spark ML models into tidy forms.





## Usage

tidyml_model_generalized_linear_regression(x, exponentiate = FALSE, ...)

tidyml_model_linear_regression(x, ...)

augmentml_model_generalized_linear_regression(
  x,
  newdata = NULL,
  type.residuals = c("working", "deviance", "pearson", "response"),
  ...
)

augmentml_model_linear_regression(
  x,
  newdata = NULL,
  type.residuals = c("working", "deviance", "pearson", "response"),
  ...
)

glanceml_model_generalized_linear_regression(x, ...)

glanceml_model_linear_regression(x, ...)





## Arguments


Argument      |Description
------------- |----------------
x | a Spark ML model.
exponentiate | For GLM, whether to exponentiate the coefficient estimates (typical for logistic regression.)
... | extra arguments (not used.)
newdata | a tbl_spark of new data to use for prediction.
type.residuals | type of residuals, defaults to ``"working"``. Must be set to ``"working"`` when ``newdata`` is supplied.




## Details

The residuals attached by ``augment`` are of type "working" by default,
  which is different from the default of "deviance" for ``residuals()`` or ``sdf_residuals()``.






