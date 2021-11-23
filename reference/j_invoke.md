# `j_invoke`

Invoke a Java function.


## Description

Invoke a Java function and force return value of the call to be retrieved
 as a Java object reference.


## Usage

```r
j_invoke(jobj, method, ...)
j_invoke_static(sc, class, method, ...)
j_invoke_new(sc, class, ...)
```


## Arguments

Argument      |Description
------------- |----------------
`jobj`     |     An list() object acting as a Java object reference (typically, a `spark_jobj` ).
`method`     |     The name of the method to be invoked.
`...`     |     Optional arguments, currently unused.
`sc`     |     A `spark_connection` .
`class`     |     The name of the Java class whose methods should be invoked.


