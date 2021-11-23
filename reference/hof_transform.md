# `hof_transform`

Transform Array Column


## Description

Apply an element-wise transformation function to an array column
 (this is essentially a dplyr wrapper for the
 `transform(array<T>, function<T, U>): array<U>` and the
 `transform(array<T>, function<T, Int, U>): array<U>` built-in Spark SQL functions)


## Usage

```r
hof_transform(x, func, expr = NULL, dest_col = NULL, ...)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     The Spark data frame to transform
`func`     |     The transformation to apply
`expr`     |     The array being transformed, could be any SQL expression evaluating to an array (default: the last column of the Spark data frame)
`dest_col`     |     Column to store the transformed result (default: expr)
`...`     |     Additional params to dplyr::mutate


## Examples

```r
library(sparklyr)
sc <- spark_connect(master = "local")
# applies the (x -> x * x) transformation to elements of all arrays
copy_to(sc, tibble::tibble(arr = list(1:5, 21:25))) %>%
hof_transform(~ .x * .x)
```


