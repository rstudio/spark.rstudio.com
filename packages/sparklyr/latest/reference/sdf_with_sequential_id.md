# sdf_with_sequential_id


Add a Sequential ID Column to a Spark DataFrame




## Description

Add a sequential ID column to a Spark DataFrame. The Spark
``zipWithIndex`` function is used to produce these. This differs from
``sdf_with_unique_id`` in that the IDs generated are independent of
partitioning.





## Usage
```r
sdf_with_sequential_id(x, id = "id", from = 1L)
```




## Arguments


Argument      |Description
------------- |----------------
x | A ``spark_connection``, ``ml_pipeline``, or a ``tbl_spark``.
id | The name of the column to host the generated IDs.
from | The starting value of the id column






