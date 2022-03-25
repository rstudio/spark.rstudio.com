# hof_array_sort


Sorts array using a custom comparator




## Description

Applies a custom comparator function to sort an array
(this is essentially a dplyr wrapper to the `array_sort(expr, func)` higher-
order function, which is supported since Spark 3.0)





## Usage
```r
hof_array_sort(x, func, expr = NULL, dest_col = NULL, ...)
```




## Arguments


Argument      |Description
------------- |----------------
x | The Spark data frame to be processed
func | The comparator function to apply (it should take 2 array elements as arguments and return an integer, with a return value of -1 indicating the first element is less than the second, 0 indicating equality, or 1 indicating the first element is greater than the second)
expr | The array being sorted, could be any SQL expression evaluating to an array (default: the last column of the Spark data frame)
dest_col | Column to store the sorted result (default: expr)
... | Additional params to dplyr::mutate






## Examples

```r


library(sparklyr)
sc <- spark_connect(master = "local", version = "3.0.0")
copy_to(
  sc,
  tibble::tibble(
    # x contains 2 arrays each having elements in ascending order
    x = list(1:5, 6:10)
  )
) %>%
  # now each array from x gets sorted in descending order
  hof_array_sort(~ as.integer(sign(.y - .x)))

```





