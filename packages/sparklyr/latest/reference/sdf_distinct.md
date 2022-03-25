# sdf_distinct


Invoke distinct on a Spark DataFrame




## Description

Invoke distinct on a Spark DataFrame





## Usage
```r
sdf_distinct(x, ..., name)
```




## Arguments


Argument      |Description
------------- |----------------
x | A Spark DataFrame.
... | Optional variables to use when determining uniqueness. If there are multiple rows for a given combination of inputs, only the first row will be preserved. If omitted, will use all variables.
name | A name to assign this table. Passed to [sdf_register()].







## See Also

Other Spark data frames: 
`sdf_copy_to()`,
`sdf_random_split()`,
`sdf_register()`,
`sdf_sample()`,
`sdf_sort()`,
`sdf_weighted_sample()`



