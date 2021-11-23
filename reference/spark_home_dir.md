# `spark_home_dir`

Find the SPARK_HOME directory for a version of Spark


## Description

Find the SPARK_HOME directory for a given version of Spark that
 was previously installed using [`spark_install`](#sparkinstall) .


## Usage

```r
spark_home_dir(version = NULL, hadoop_version = NULL)
```


## Arguments

Argument      |Description
------------- |----------------
`version`     |     Version of Spark
`hadoop_version`     |     Version of Hadoop


## Value

Path to SPARK_HOME (or `NULL` if the specified version
 was not found).


