# `spark_dataframe`

Retrieve a Spark DataFrame


## Description

This S3 generic is used to access a Spark DataFrame object (as a Java
 object reference) from an list() object.


## Usage

```r
spark_dataframe(x, ...)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     An list() object wrapping, or containing, a Spark DataFrame.
`...`     |     Optional arguments; currently unused.


## Value

A [`spark_jobj`](#sparkjobj) representing a Java object reference
 to a Spark DataFrame.


