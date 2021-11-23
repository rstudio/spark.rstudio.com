# `spark_home_set`

Set the SPARK_HOME environment variable


## Description

Set the `SPARK_HOME` environment variable. This slightly speeds up some
 operations, including the connection time.


## Usage

```r
spark_home_set(path = NULL, ...)
```


## Arguments

Argument      |Description
------------- |----------------
`path`     |     A string containing the path to the installation location of Spark. If `NULL` , the path to the most latest Spark/Hadoop versions is used.
`...`     |     Additional parameters not currently used.


## Value

The function is mostly invoked for the side-effect of setting the
 `SPARK_HOME` environment variable. It also returns `TRUE` if the
 environment was successfully set, and `FALSE` otherwise.


## Examples

```r
# Not run due to side-effects
spark_home_set()
```


