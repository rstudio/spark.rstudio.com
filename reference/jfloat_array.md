# `jfloat_array`

Instantiate an Array[Float].


## Description

Instantiate an `Array[Float]` object with the value specified.
 NOTE: this method is useful when one has to invoke a Java/Scala method
 requiring an `Array[Float]` as one of its parameters.


## Usage

```r
jfloat_array(sc, x)
```


## Arguments

Argument      |Description
------------- |----------------
`sc`     |     A `spark_connection` .
`x`     |     A numeric vector in R.


## Examples

```r
sc <- spark_connect(master = "spark://HOST:PORT")

jflt_arr <- jfloat_array(sc, c(-1.23e-8, 0, -1.23e-8))
# jflt_arr is now a reference an array of java.lang.Float
```


