# `hof_transform_values`

Transforms values of a map


## Description

Applies the transformation function specified to all values of a map
 (this is essentially a dplyr wrapper to the `transform_values(expr, func)` higher-
 order function, which is supported since Spark 3.0)


## Usage

```r
hof_transform_values(x, func, expr = NULL, dest_col = NULL, ...)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     The Spark data frame to be processed
`func`     |     The transformation function to apply (it should take (key, value) as arguments and return a transformed value)
`expr`     |     The map being transformed, could be any SQL expression evaluating to a map (default: the last column of the Spark data frame)
`dest_col`     |     Column to store the transformed result (default: expr)
`...`     |     Additional params to dplyr::mutate


## Examples

```r
library(sparklyr)
sc <- spark_connect(master = "local", version = "3.0.0")
sdf <- sdf_len(sc, 1) %>% dplyr::mutate(m = map("a", 0L, "b", 2L, "c", -1L))
transformed_sdf <- sdf %>% hof_transform_values(~ CONCAT(.x, " == ", .y))
```


