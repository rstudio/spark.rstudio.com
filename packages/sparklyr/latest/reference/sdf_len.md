# sdf_len


Create DataFrame for Length




## Description

Creates a DataFrame for the given length.





## Usage
```r
sdf_len(sc, length, repartition = NULL, type = c("integer", "integer64"))
```




## Arguments


Argument      |Description
------------- |----------------
sc | The associated Spark connection.
length | The desired length of the sequence.
repartition | The number of partitions to use when distributing the data across the Spark cluster.
type | The data type to use for the index, either ``"integer"`` or ``"integer64"``.





