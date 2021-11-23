# `sdf_fast_bind_cols`

Fast cbind for Spark DataFrames


## Description

This is a version of `sdf_bind_cols` that works by zipping
 RDDs. From the API docs: "Assumes that the two RDDs have the
 *same number of partitions* and the *same number of elements
 in each partition* (e.g. one was made through a map on the
 other)."


## Usage

```r
sdf_fast_bind_cols(...)
```


## Arguments

Argument      |Description
------------- |----------------
`...`     |     Spark DataFrames to cbind


