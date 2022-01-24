# sdf_schema


Read the Schema of a Spark DataFrame




## Description

Read the schema of a Spark DataFrame.





## Usage
```r
sdf_schema(x, expand_nested_cols = FALSE, expand_struct_cols = FALSE)
```




## Arguments


Argument      |Description
------------- |----------------
x | A ``spark_connection``, ``ml_pipeline``, or a ``tbl_spark``.
expand_nested_cols | Whether to expand columns containing nested array
of structs (which are usually created by tidyr::nest on a Spark data frame)
expand_struct_cols | Whether to expand columns containing structs




## Details

The ``type`` column returned gives the string representation of the
underlying Spark  type for that column; for example, a vector of numeric
values would be returned with the type ``"DoubleType"``. Please see the
http://spark.apache.org/docs/latest/api/scala/index.html#org.apache.spark.sql.types.packageSpark Scala API Documentation
for information on what types are available and exposed by Spark.





## Value

An  ``list``, with each ``list`` element describing the
  ``name`` and ``type`` of a column.





