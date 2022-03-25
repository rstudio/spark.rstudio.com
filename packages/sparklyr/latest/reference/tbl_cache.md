# tbl_cache


Cache a Spark Table




## Description

Force a Spark table with name ``name`` to be loaded into memory.
Operations on cached tables should normally (although not always)
be more performant than the same operation performed on an uncached
table.





## Usage
```r
tbl_cache(sc, name, force = TRUE)
```




## Arguments


Argument      |Description
------------- |----------------
sc | A ``spark_connection``.
name | The table name.
force | Force the data to be loaded into memory? This is accomplished by calling the ``count`` API on the associated Spark DataFrame.






