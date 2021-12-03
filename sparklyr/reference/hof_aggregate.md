# hof_aggregate


Apply Aggregate Function to Array Column




## Description

Apply an element-wise aggregation function to an array column
(this is essentially a dplyr wrapper for the
``aggregate(array<T>, A, function<A, T, A>[, function<A, R>]): R``
built-in Spark SQL functions)





## Usage
```r
hof_aggregate(
  x,
  start,
  merge,
  finish = NULL,
  expr = NULL,
  dest_col = NULL,
  ...
)
```




## Arguments


Argument      |Description
------------- |----------------
x | The Spark data frame to run aggregation on
start | The starting value of the aggregation
merge | The aggregation function
finish | Optional param specifying a transformation to apply on the final value of the aggregation
expr | The array being aggregated, could be any SQL expression evaluating to an array
(default: the last column of the Spark data frame)
dest_col | Column to store the aggregated result (default: expr)
... | Additional params to dplyr::mutate






## Examples

```r


library(sparklyr)
sc <- spark_connect(master = "local")
# concatenates all numbers of each array in `array_column` and add parentheses
# around the resulting string
copy_to(sc, tibble::tibble(array_column = list(1:5, 21:25))) %>%
  hof_aggregate(
    start = "",
    merge = ~ CONCAT(.y, .x),
    finish = ~ CONCAT("(", .x, ")")
  )

```





