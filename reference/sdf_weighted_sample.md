# `sdf_weighted_sample`

Perform Weighted Random Sampling on a Spark DataFrame


## Description

Draw a random sample of rows (with or without replacement) from a Spark
 DataFrame
 If the sampling is done without replacement, then it will be conceptually
 equivalent to an iterative process such that in each step the probability of
 adding a row to the sample set is equal to its weight divided by summation of
 weights of all rows that are not in the sample set yet in that step.


## Usage

```r
sdf_weighted_sample(x, weight_col, k, replacement = TRUE, seed = NULL)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     An object coercable to a Spark DataFrame.
`weight_col`     |     Name of the weight column
`k`     |     Sample set size
`replacement`     |     Whether to sample with replacement
`seed`     |     An (optional) integer seed


## Seealso

Other Spark data frames:
 [`sdf_copy_to`](#sdfcopyto) ,
 [`sdf_distinct`](#sdfdistinct) ,
 [`sdf_random_split`](#sdfrandomsplit) ,
 [`sdf_register`](#sdfregister) ,
 [`sdf_sample`](#sdfsample) ,
 [`sdf_sort`](#sdfsort)


