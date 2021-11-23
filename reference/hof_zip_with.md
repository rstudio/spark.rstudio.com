# `hof_zip_with`

Combines 2 Array Columns


## Description

Applies an element-wise function to combine elements from 2 array columns
 (this is essentially a dplyr wrapper for the
 `zip_with(array<T>, array<U>, function<T, U, R>): array<R>` 
 built-in function in Spark SQL)


## Usage

```r
hof_zip_with(x, func, dest_col = NULL, left = NULL, right = NULL, ...)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     The Spark data frame to process
`func`     |     Element-wise combining function to be applied
`dest_col`     |     Column to store the query result (default: the last column of the Spark data frame)
`left`     |     Any expression evaluating to an array (default: the first column of the Spark data frame)
`right`     |     Any expression evaluating to an array (default: the second column of the Spark data frame)
`...`     |     Additional params to dplyr::mutate


## Examples

```r
library(sparklyr)
sc <- spark_connect(master = "local")
# compute element-wise products of 2 arrays from each row of `left` and `right`
# and store the resuling array in `res`
copy_to(
sc,
tibble::tibble(
left = list(1:5, 21:25),
right = list(6:10, 16:20),
res = c(0, 0)
)
) %>%
hof_zip_with(~ .x * .y)
```


