# `sdf_partition_sizes`

Compute the number of records within each partition of a Spark DataFrame


## Description

Compute the number of records within each partition of a Spark DataFrame


## Usage

```r
sdf_partition_sizes(x)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     A `spark_connection` , `ml_pipeline` , or a `tbl_spark` .


## Examples

```r
library(sparklyr)
sc <- spark_connect(master = "spark://HOST:PORT")
example_sdf <- sdf_len(sc, 100L, repartition = 10L)
example_sdf %>%
sdf_partition_sizes() %>%
print()
```


