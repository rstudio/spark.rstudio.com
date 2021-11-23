# `hof_forall`

Checks whether all elements in an array satisfy a predicate


## Description

Checks whether the predicate specified holds for all elements in an array
 (this is essentially a dplyr wrapper to the `forall(expr, pred)` higher-
 order function, which is supported since Spark 3.0)


## Usage

```r
hof_forall(x, pred, expr = NULL, dest_col = NULL, ...)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     The Spark data frame to be processed
`pred`     |     The predicate to test (it should take an array element as argument and return a boolean value)
`expr`     |     The array being tested, could be any SQL expression evaluating to an array (default: the last column of the Spark data frame)
`dest_col`     |     Column to store the boolean result (default: expr)
`...`     |     Additional params to dplyr::mutate


## Examples

```r
sc <- spark_connect(master = "local", version = "3.0.0")
df <- tibble::tibble(
x = list(c(1, 2, 3, 4, 5), c(6, 7, 8, 9, 10)),
y = list(c(1, 4, 2, 8, 5), c(7, 1, 4, 2, 8)),
)
sdf <- sdf_copy_to(sc, df, overwrite = TRUE)

all_positive_tbl <- sdf %>%
hof_forall(pred = ~ .x > 0, expr = y, dest_col = all_positive) %>%
dplyr::select(all_positive)
```


