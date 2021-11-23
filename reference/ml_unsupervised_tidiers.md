# `ml_unsupervised_tidiers`

Tidying methods for Spark ML unsupervised models


## Description

These methods summarize the results of Spark ML models into tidy forms.


## Usage

```r
list(list("tidy"), list("ml_model_kmeans"))(x, ...)
list(list("augment"), list("ml_model_kmeans"))(x, newdata = NULL, ...)
list(list("glance"), list("ml_model_kmeans"))(x, ...)
list(list("tidy"), list("ml_model_bisecting_kmeans"))(x, ...)
list(list("augment"), list("ml_model_bisecting_kmeans"))(x, newdata = NULL, ...)
list(list("glance"), list("ml_model_bisecting_kmeans"))(x, ...)
list(list("tidy"), list("ml_model_gaussian_mixture"))(x, ...)
list(list("augment"), list("ml_model_gaussian_mixture"))(x, newdata = NULL, ...)
list(list("glance"), list("ml_model_gaussian_mixture"))(x, ...)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     a Spark ML model.
`...`     |     extra arguments (not used.)
`newdata`     |     a tbl_spark of new data to use for prediction.


