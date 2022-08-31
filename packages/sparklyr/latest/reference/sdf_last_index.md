# sdf_last_index


Returns the last index of a Spark DataFrame




## Description

Returns the last index of a Spark DataFrame. The Spark
``mapPartitionsWithIndex`` function is used to iterate
through the last nonempty partition of the RDD to find the last record.





## Usage
```r
sdf_last_index(x, id = "id")
```




## Arguments


Argument      |Description
------------- |----------------
x | A ``spark_connection``, ``ml_pipeline``, or a ``tbl_spark``.
id | The name of the index column.





