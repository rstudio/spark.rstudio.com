# `j_invoke_method`

Generic Call Interface


## Description

Call a Java method and retrieve the return value through a JVM object
 reference.


## Usage

```r
j_invoke_method(sc, static, object, method, ...)
```


## Arguments

Argument      |Description
------------- |----------------
`sc`     |     `spark_connection`
`static`     |     Is this a static method call (including a constructor). If so then the `object` parameter should be the name of a class (otherwise it should be a spark_jobj instance).
`object`     |     Object instance or name of class (for `static` )
`method`     |     Name of method
`...`     |     Call parameters


