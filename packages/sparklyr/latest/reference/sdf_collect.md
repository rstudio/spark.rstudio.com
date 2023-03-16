# sdf_collect


Collect a Spark DataFrame into R.




## Description

Collects a Spark dataframe into R.





## Usage
```r
sdf_collect(object, impl = c("row-wise", "row-wise-iter", "column-wise"), ...)
```




## Arguments


Argument      |Description
------------- |----------------
object | Spark dataframe to collect
impl | Which implementation to use while collecting Spark dataframe - row-wise: fetch the entire dataframe into memory and then process it row-by-row - row-wise-iter: iterate through the dataframe using RDD local iterator, processing one row at                  a time (hence reducing memory footprint) - column-wise: fetch the entire dataframe into memory and then process it column-by-column NOTE: (1) this will not apply to streaming or arrow use cases (2) this parameter will only affect implementation detail, and will not affect result of `sdf_collect`, and should only be set if performance profiling indicates any particular choice will be significantly better than the default choice ("row-wise")
... | Additional options.





