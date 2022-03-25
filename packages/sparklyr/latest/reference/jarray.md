# jarray


Instantiate a Java array with a specific element type.




## Description

Given a list of Java object references, instantiate an ``Array[T]``
containing the same list of references, where ``T`` is a non-primitive
type that is more specific than ``java.lang.Object``.





## Usage
```r
jarray(sc, x, element_type)
```




## Arguments


Argument      |Description
------------- |----------------
sc | A ``spark_connection``.
x | A list of Java object references.
element_type | A valid Java class name representing the generic type parameter of the Java array to be instantiated. Each element of ``x`` must refer to a Java object that is assignable to ``element_type``.






## Examples
```r
sc <- spark_connect(master = "spark://HOST:PORT")

string_arr <- jarray(sc, letters, element_type = "java.lang.String")
# string_arr is now a reference to an array of type String[]

```



