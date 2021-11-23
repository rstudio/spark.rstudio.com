# `sdf_register`

Register a Spark DataFrame


## Description

Registers a Spark DataFrame (giving it a table name for the
 Spark SQL context), and returns a `tbl_spark` .


## Usage

```r
sdf_register(x, name = NULL)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     A Spark DataFrame.
`name`     |     A name to assign this table.


## Seealso

Other Spark data frames:
 [`sdf_copy_to`](#sdfcopyto) ,
 [`sdf_distinct`](#sdfdistinct) ,
 [`sdf_random_split`](#sdfrandomsplit) ,
 [`sdf_sample`](#sdfsample) ,
 [`sdf_sort`](#sdfsort) ,
 [`sdf_weighted_sample`](#sdfweightedsample)


