# sdf_register


Register a Spark DataFrame




## Description

Registers a Spark DataFrame (giving it a table name for the
Spark SQL context), and returns a ``tbl_spark``.





## Usage
```r
sdf_register(x, name = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
x | A Spark DataFrame.
name | A name to assign this table.







## See Also

Other Spark data frames: 
`sdf_copy_to()`,
`sdf_distinct()`,
`sdf_random_split()`,
`sdf_sample()`,
`sdf_sort()`,
`sdf_weighted_sample()`


