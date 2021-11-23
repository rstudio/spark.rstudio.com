# `ml_pca_tidiers`

Tidying methods for Spark ML Principal Component Analysis


## Description

These methods summarize the results of Spark ML models into tidy forms.


## Usage

```r
list(list("tidy"), list("ml_model_pca"))(x, ...)
list(list("augment"), list("ml_model_pca"))(x, newdata = NULL, ...)
list(list("glance"), list("ml_model_pca"))(x, ...)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     a Spark ML model.
`...`     |     extra arguments (not used.)
`newdata`     |     a tbl_spark of new data to use for prediction.


