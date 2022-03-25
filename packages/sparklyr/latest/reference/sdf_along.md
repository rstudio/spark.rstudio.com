# sdf_along


Create DataFrame for along Object




## Description

Creates a DataFrame along the given object.





## Usage
```r
sdf_along(sc, along, repartition = NULL, type = c("integer", "integer64"))
```




## Arguments


Argument      |Description
------------- |----------------
sc | The associated Spark connection.
along | Takes the length from the length of this argument.
repartition | The number of partitions to use when distributing the data across the Spark cluster.
type | The data type to use for the index, either ``"integer"`` or ``"integer64"``.






