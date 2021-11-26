# spark_read_binary


Read binary data into a Spark DataFrame.




## Description

Read binary files within a directory and convert each file into a record
within the resulting Spark dataframe. The output will be a Spark dataframe
with the following columns and possibly partition columns:
  
    
* path: StringType
    
* modificationTime: TimestampType
    
* length: LongType
    
* content: BinaryType
 





## Usage
```r
spark_read_binary(
  sc,
  name = NULL,
  dir = name,
  path_glob_filter = "*",
  recursive_file_lookup = FALSE,
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
dir | Directory to read binary files from.
path_glob_filter | Glob pattern of binary files to be loaded
(e.g., "*.jpg").
recursive_file_lookup | If FALSE (default), then partition discovery
will be enabled (i.e., if a partition naming scheme is present, then
partitions specified by subdirectory names such as "date=2019-07-01" will
be created and files outside subdirectories following a partition naming
scheme will be ignored). If TRUE, then all nested directories will be
searched even if their names do not follow a partition naming scheme.
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
`spark_read_avro()`,
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



