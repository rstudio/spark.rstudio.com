# spark_read_parquet


Read a Parquet file into a Spark DataFrame




## Description

Read a https://parquet.apache.org/Parquet file into a Spark
DataFrame.





## Usage
```r
spark_read_parquet(
  sc,
  name = NULL,
  path = name,
  options = list(),
  repartition = 0,
  memory = TRUE,
  overwrite = TRUE,
  columns = NULL,
  schema = NULL,
  ...
)
```




## Arguments


Argument      |Description
------------- |----------------
sc | A ``spark_connection``.
name | The name to assign to the newly generated table.
path | The path to the file. Needs to be accessible from the cluster.
Supports the "hdfs://", "s3a://" and "file://" protocols.
options | A list of strings with additional options. See http://spark.apache.org/docs/latest/sql-programming-guide.html#configuration.
repartition | The number of partitions used to distribute the
generated table. Use 0 (the default) to avoid partitioning.
memory | Boolean; should the data be loaded eagerly into memory? (That
is, should the table be cached?)
overwrite | Boolean; overwrite the table with the given name if it
already exists?
columns | A vector of column names or a named vector of column types.
If specified, the elements can be ``"binary"`` for ``BinaryType``,
``"boolean"`` for ``BooleanType``, ``"byte"`` for ``ByteType``,
``"integer"`` for ``IntegerType``, ``"integer64"`` for ``LongType``,
``"double"`` for ``DoubleType``, ``"character"`` for ``StringType``,
``"timestamp"`` for ``TimestampType`` and ``"date"`` for ``DateType``.
schema | A (java) read schema. Useful for optimizing read operation on nested data.
... | Optional arguments; currently unused.




## Details

You can read data from HDFS (``hdfs://``), S3 (``s3a://``), as well as
  the local file system (``file://``).

If you are reading from a secure S3 bucket be sure to set the following in your spark-defaults.conf
``spark.hadoop.fs.s3a.access.key``, ``spark.hadoop.fs.s3a.secret.key`` or any of the methods outlined in the aws-sdk
documentation https://docs.aws.amazon.com/sdk-for-java/v1/developer-guide/credentials.htmlWorking with AWS credentials
In order to work with the newer ``s3a://`` protocol also set the values for ``spark.hadoop.fs.s3a.impl`` and ``spark.hadoop.fs.s3a.endpoint ``.
In addition, to support v4 of the S3 api be sure to pass the ``-Dcom.amazonaws.services.s3.enableV4`` driver options
for the config key ``spark.driver.extraJavaOptions ``
For instructions on how to configure ``s3n://`` check the hadoop documentation:
https://hadoop.apache.org/docs/stable/hadoop-aws/tools/hadoop-aws/index.html#Authentication_propertiess3n authentication properties







## See Also

Other Spark serialization routines: 
`collect_from_rds()`,
`spark_load_table()`,
`spark_read_avro()`,
`spark_read_binary()`,
`spark_read_csv()`,
`spark_read_delta()`,
`spark_read_image()`,
`spark_read_jdbc()`,
`spark_read_json()`,
`spark_read_libsvm()`,
`spark_read_orc()`,
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



