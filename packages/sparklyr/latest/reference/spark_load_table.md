# spark_load_table


Reads from a Spark Table into a Spark DataFrame.




## Description

Reads from a Spark Table into a Spark DataFrame.





## Usage
```r
spark_load_table(
  sc,
  name,
  path,
  options = list(),
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
path | The path to the file. Needs to be accessible from the cluster. Supports the "hdfs://", "s3a://" and "file://" protocols.
options | A list of strings with additional options. See https://spark.apache.org/docs/latest/sql-programming-guide.html#configuration.
repartition | The number of partitions used to distribute the generated table. Use 0 (the default) to avoid partitioning.
memory | Boolean; should the data be loaded eagerly into memory? (That is, should the table be cached?)
overwrite | Boolean; overwrite the table with the given name if it already exists?







## See Also

Other Spark serialization routines: 
`collect_from_rds()`,
`spark_read_avro()`,
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



