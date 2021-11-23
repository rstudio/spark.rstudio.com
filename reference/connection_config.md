# `connection_config`

Read configuration values for a connection


## Description

Read configuration values for a connection


## Usage

```r
connection_config(sc, prefix, not_prefix = list())
```


## Arguments

Argument      |Description
------------- |----------------
`sc`     |     `spark_connection`
`prefix`     |     Prefix to read parameters for (e.g. `spark.context.` , `spark.sql.` , etc.)
`not_prefix`     |     Prefix to not include.


## Value

Named list of config parameters (note that if a prefix was
 specified then the names will not include the prefix)


