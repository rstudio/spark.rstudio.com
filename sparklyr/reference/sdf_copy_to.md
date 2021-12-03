# sdf_copy_to


Copy an Object into Spark




## Description

Copy an object into Spark, and return an  object wrapping the
copied object (typically, a Spark DataFrame).





## Usage
```r
sdf_copy_to(sc, x, name, memory, repartition, overwrite, struct_columns, ...)

sdf_import(x, sc, name, memory, repartition, overwrite, struct_columns, ...)
```




## Arguments


Argument      |Description
------------- |----------------
sc | The associated Spark connection.
x | An  object from which a Spark DataFrame can be generated.
name | The name to assign to the copied table in Spark.
memory | Boolean; should the table be cached into memory?
repartition | The number of partitions to use when distributing the
table across the Spark cluster. The default (0) can be used to avoid
partitioning.
overwrite | Boolean; overwrite a pre-existing table with the name ``name``
if one already exists?
struct_columns | (only supported with Spark 2.4.0 or higher) A list of
columns from the source data frame that should be converted to Spark SQL
StructType columns.
The source columns can contain either json strings or nested lists.
All rows within each source column should have identical schemas (because
otherwise the conversion result will contain unexpected null values or
missing values as Spark currently does not support schema discovery on
individual rows within a struct column).
... | Optional arguments, passed to implementing methods.






## Examples


```r

sc <- spark_connect(master = "spark://HOST:PORT")
sdf_copy_to(sc, iris)

```






## See Also

Other Spark data frames: 
`sdf_distinct()`,
`sdf_random_split()`,
`sdf_register()`,
`sdf_sample()`,
`sdf_sort()`,
`sdf_weighted_sample()`



