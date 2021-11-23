# `sdf_sample`

Randomly Sample Rows from a Spark DataFrame


## Description

Draw a random sample of rows (with or without replacement)
 from a Spark DataFrame.


## Usage

```r
sdf_sample(x, fraction = 1, replacement = TRUE, seed = NULL)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     An object coercable to a Spark DataFrame.
`fraction`     |     The fraction to sample.
`replacement`     |     Boolean; sample with replacement?
`seed`     |     An (optional) integer seed.


## Seealso

Other Spark data frames:
 [`sdf_copy_to`](#sdfcopyto) ,
 [`sdf_distinct`](#sdfdistinct) ,
 [`sdf_random_split`](#sdfrandomsplit) ,
 [`sdf_register`](#sdfregister) ,
 [`sdf_sort`](#sdfsort) ,
 [`sdf_weighted_sample`](#sdfweightedsample)


