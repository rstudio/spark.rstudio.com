# gf_persist


Persist the GraphFrame




## Description

Persist the GraphFrame





## Usage
```r
gf_persist(x, storage_level = "MEMORY_AND_DISK")
```




## Arguments


Argument      |Description
------------- |----------------
x | An object coercable to a GraphFrame (typically, a ``gf_graphframe``).
storage_level | The storage level to be used. Please view the http://spark.apache.org/docs/latest/programming-guide.html#rdd-persistenceSpark Documentation for information on what storage levels are accepted.






