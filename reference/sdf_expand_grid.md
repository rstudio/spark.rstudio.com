# `sdf_expand_grid`

Create a Spark dataframe containing all combinations of inputs


## Description

Given one or more R vectors/factors or single-column Spark dataframes,
 perform an expand.grid operation on all of them and store the result in
 a Spark dataframe


## Usage

```r
sdf_expand_grid(
  sc,
  ...,
  broadcast_vars = NULL,
  memory = TRUE,
  repartition = NULL,
  partition_by = NULL
)
```


## Arguments

Argument      |Description
------------- |----------------
`sc`     |     The associated Spark connection.
`...`     |     Each input variable can be either a R vector/factor or a Spark dataframe. Unnamed inputs will assume the default names of 'Var1', 'Var2', etc in the result, similar to what `expand.grid` does for unnamed inputs.
`broadcast_vars`     |     Indicates which input(s) should be broadcasted to all nodes of the Spark cluster during the join process (default: none).
`memory`     |     Boolean; whether the resulting Spark dataframe should be cached into memory (default: TRUE)
`repartition`     |     Number of partitions the resulting Spark dataframe should have
`partition_by`     |     Vector of column names used for partitioning the resulting Spark dataframe, only supported for Spark 2.0+


## Examples

```r
sc <- spark_connect(master = "local")
grid_sdf <- sdf_expand_grid(sc, seq(5), rnorm(10), letters)
```


