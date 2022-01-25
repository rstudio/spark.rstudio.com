# spark_read_avro


Read Apache Avro data into a Spark DataFrame.




## Description

Read Apache Avro data into a Spark DataFrame.
Notice this functionality requires the Spark connection ``sc`` to be instantiated with either
an explicitly specified Spark version (i.e.,
``spark_connect(..., version = <version>, packages = c("avro", <other package(s)>), ...)``)
or a specific version of Spark avro package to use (e.g.,
``spark_connect(..., packages = c("org.apache.spark:spark-avro_2.12:3.0.0", <other package(s)>), ...)``).





## Usage
```r
spark_read_avro(
  sc,
  name = NULL,
  path = name,
  avro_schema = NULL,
  ignore_extension = TRUE,
  repartition = 0,
  memory = TRUE,
  overwrite = TRUE
)
```




## Arguments


Argument      |Description
------------- |----------------
sc | A ``spark_connection``.
name | The name to assign to the newly generated table.
path | The path to the file. Needs to be accessible from the cluster.
Supports the "hdfs://", "s3a://" and "file://" protocols.
avro_schema | Optional Avro schema in JSON format
ignore_extension | If enabled, all files with and without .avro extension
are loaded (default: ``TRUE``)
repartition | The number of partitions used to distribute the
generated table. Use 0 (the default) to avoid partitioning.
memory | Boolean; should the data be loaded eagerly into memory? (That
is, should the table be cached?)
overwrite | Boolean; overwrite the table with the given name if it
already exists?







## See Also

Other Spark serialization routines: 
`collect_from_rds()`,
`spark_load_table()`,
`spark_read_binary()`,
`spark_read_csv()`,
`spark_read_delta()`,
`spark_read_image()`,
`spark_read_jdbc()`,
`spark_read_json()`,
`spark_read_libsvm()`,
`spark_read_orc()`,
`spark_read_parquet()`,
`spark_read_source()`,
`spark_read_table()`,
`spark_read_text()`,
`spark_read()`,
`spark_save_table()`,
`spark_write_avro()`,
`spark_write_csv()`,
`spark_write_delta()`,
`spark_write_jdbc()`,
`spark_write_json()`,
`spark_write_orc()`,
`spark_write_parquet()`,
`spark_write_source()`,
`spark_write_table()`,
`spark_write_text()`


