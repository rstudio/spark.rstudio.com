# `sdf_project`

Project features onto principal components


## Description

Project features onto principal components


## Usage

```r
sdf_project(
  object,
  newdata,
  features = dimnames(object$pc)[[1]],
  feature_prefix = NULL,
  ...
)
```


## Arguments

Argument      |Description
------------- |----------------
`object`     |     A Spark PCA model object
`newdata`     |     An object coercible to a Spark DataFrame
`features`     |     A vector of names of columns to be projected
`feature_prefix`     |     The prefix used in naming the output features
`...`     |     Optional arguments; currently unused.


