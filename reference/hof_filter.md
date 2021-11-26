# hof_filter


Filter Array Column




## Description

Apply an element-wise filtering function to an array column
(this is essentially a dplyr wrapper for the
``filter(array<T>, function<T, Boolean>): array<T>`` built-in Spark SQL functions)





## Usage
```r
hof_filter(x, func, expr = NULL, dest_col = NULL, ...)
```




## Arguments


Argument      |Description
------------- |----------------
x | The Spark data frame to filter
func | The filtering function
expr | The array being filtered, could be any SQL expression evaluating to an array
(default: the last column of the Spark data frame)
dest_col | Column to store the filtered result (default: expr)
... | Additional params to dplyr::mutate






## Examples

```r


library(sparklyr)
sc <- spark_connect(master = "local")
# only keep odd elements in each array in `array_column`
copy_to(sc, tibble::tibble(array_column = list(1:5, 21:25))) %>%
  hof_filter(~ .x %% 2 == 1)

```





