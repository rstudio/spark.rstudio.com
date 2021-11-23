# `spark_jobj`

Retrieve a Spark JVM Object Reference


## Description

This S3 generic is used for accessing the underlying Java Virtual Machine
 (JVM) Spark objects associated with list() objects. These objects act as
 references to Spark objects living in the JVM. Methods on these objects
 can be called with the [`invoke`](#invoke) family of functions.


## Usage

```r
spark_jobj(x, ...)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     An list() object containing, or wrapping, a `spark_jobj` .
`...`     |     Optional arguments; currently unused.


## Seealso

[`invoke`](#invoke) , for calling methods on Java object references.


