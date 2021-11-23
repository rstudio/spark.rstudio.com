# `sdf_read_column`

Read a Column from a Spark DataFrame


## Description

Read a single column from a Spark DataFrame, and return
 the contents of that column back to list() .


## Usage

```r
sdf_read_column(x, column)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     A `spark_connection` , `ml_pipeline` , or a `tbl_spark` .
`column`     |     The name of a column within `x` .


## Details

It is expected for this operation to preserve row order.


