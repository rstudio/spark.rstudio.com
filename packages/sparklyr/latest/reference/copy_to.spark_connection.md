# copy_to.spark_connection


Copy an R Data Frame to Spark




## Description

Copy an R ``data.frame`` to Spark, and return a reference to the
generated Spark DataFrame as a ``tbl_spark``. The returned object will
act as a ``dplyr``-compatible interface to the underlying Spark table.





## Usage

copy_tospark_connection(
  dest,
  df,
  name = spark_table_name(substitute(df)),
  overwrite = FALSE,
  memory = TRUE,
  repartition = 0L,
  ...
)





## Arguments


Argument      |Description
------------- |----------------
dest | A ``spark_connection``.
df | An  ``data.frame``.
name | The name to assign to the copied table in Spark.
overwrite | Boolean; overwrite a pre-existing table with the name ``name`` if one already exists?
memory | Boolean; should the table be cached into memory?
repartition | The number of partitions to use when distributing the table across the Spark cluster. The default (0) can be used to avoid partitioning.
... | Optional arguments; currently unused.





## Value

A ``tbl_spark``, representing a ``dplyr``-compatible interface
  to a Spark DataFrame.





