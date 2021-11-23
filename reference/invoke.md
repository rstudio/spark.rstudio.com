# `invoke`

Invoke a Method on a JVM Object


## Description

Invoke methods on Java object references. These functions provide a
 mechanism for invoking various Java object methods directly from list() .


## Usage

```r
invoke(jobj, method, ...)
invoke_static(sc, class, method, ...)
invoke_new(sc, class, ...)
```


## Arguments

Argument      |Description
------------- |----------------
`jobj`     |     An list() object acting as a Java object reference (typically, a `spark_jobj` ).
`method`     |     The name of the method to be invoked.
`...`     |     Optional arguments, currently unused.
`sc`     |     A `spark_connection` .
`class`     |     The name of the Java class whose methods should be invoked.


## Details

Use each of these functions in the following scenarios:
 
 list(list("lll"), list("\n", list("invoke"), " ", list(), " Execute a method on a Java object reference (typically, a ", list("spark_jobj"), "). ", list(), "\n", list("invoke_static"), " ", list(), " Execute a static method associated with a Java class. ", list(), "\n", list("invoke_new"), " ", list(), " Invoke a constructor associated with a Java class. ", list(), "\n"))


## Examples

```r
sc <- spark_connect(master = "spark://HOST:PORT")
spark_context(sc) %>%
invoke("textFile", "file.csv", 1L) %>%
invoke("count")
```


