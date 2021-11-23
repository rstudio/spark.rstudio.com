# `registerDoSpark`

Register a Parallel Backend


## Description

Registers a parallel backend using the `foreach` package.


## Usage

```r
registerDoSpark(spark_conn, parallelism = NULL, ...)
```


## Arguments

Argument      |Description
------------- |----------------
`spark_conn`     |     Spark connection to use
`parallelism`     |     Level of parallelism to use for task execution (if unspecified, then it will take the value of `SparkContext.defaultParallelism()` which by default is the number of cores available to the `sparklyr` application)
`...`     |     additional options for sparklyr parallel backend (currently only the only valid option is nocompile = T, F )


## Value

None


## Examples

```r
sc <- spark_connect(master = "local")
registerDoSpark(sc, nocompile = FALSE)
```


