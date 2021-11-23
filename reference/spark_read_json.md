# `spark_read_json`

Read a JSON file into a Spark DataFrame


## Description

Read a table serialized in the c("[JavaScript\n](http://www.json.org/)", "[Object Notation](http://www.json.org/)") format into a Spark DataFrame.


## Usage

```r
spark_read_json(
  sc,
  name = NULL,
  path = name,
  options = list(),
  repartition = 0,
  memory = TRUE,
  overwrite = TRUE,
  columns = NULL,
  ...
)
```


## Arguments

Argument      |Description
------------- |----------------
`sc`     |     A `spark_connection` .
`name`     |     The name to assign to the newly generated table.
`path`     |     The path to the file. Needs to be accessible from the cluster. Supports the "hdfs://" , "s3a://" and "file://" protocols.
`options`     |     A list of strings with additional options.
`repartition`     |     The number of partitions used to distribute the generated table. Use 0 (the default) to avoid partitioning.
`memory`     |     Boolean; should the data be loaded eagerly into memory? (That is, should the table be cached?)
`overwrite`     |     Boolean; overwrite the table with the given name if it already exists?
`columns`     |     A vector of column names or a named vector of column types. If specified, the elements can be `"binary"` for `BinaryType` , `"boolean"` for `BooleanType` , `"byte"` for `ByteType` , `"integer"` for `IntegerType` , `"integer64"` for `LongType` , `"double"` for `DoubleType` , `"character"` for `StringType` , `"timestamp"` for `TimestampType` and `"date"` for `DateType` .
`...`     |     Optional arguments; currently unused.


## Details

You can read data from HDFS ( `hdfs://` ), S3 ( `s3a://` ), as well as
 the local file system ( `file://` ).
 
 If you are reading from a secure S3 bucket be sure to set the following in your spark-defaults.conf
 `spark.hadoop.fs.s3a.access.key` , `spark.hadoop.fs.s3a.secret.key` or any of the methods outlined in the aws-sdk
 documentation [Working with AWS credentials](https://docs.aws.amazon.com/sdk-for-java/v1/developer-guide/credentials.html) 
 In order to work with the newer `s3a://` protocol also set the values for `spark.hadoop.fs.s3a.impl` and `spark.hadoop.fs.s3a.endpoint ` .
 In addition, to support v4 of the S3 api be sure to pass the `-Dcom.amazonaws.services.s3.enableV4` driver options
 for the config key `spark.driver.extraJavaOptions ` 
 For instructions on how to configure `s3n://` check the hadoop documentation:
 [s3n authentication properties](https://hadoop.apache.org/docs/stable/hadoop-aws/tools/hadoop-aws/index.html#Authentication_properties)


## Seealso

Other Spark serialization routines:
 [`collect_from_rds`](#collectfromrds) ,
 [`spark_load_table`](#sparkloadtable) ,
 [`spark_read_avro`](#sparkreadavro) ,
 [`spark_read_binary`](#sparkreadbinary) ,
 [`spark_read_csv`](#sparkreadcsv) ,
 [`spark_read_delta`](#sparkreaddelta) ,
 [`spark_read_image`](#sparkreadimage) ,
 [`spark_read_jdbc`](#sparkreadjdbc) ,
 [`spark_read_libsvm`](#sparkreadlibsvm) ,
 [`spark_read_orc`](#sparkreadorc) ,
 [`spark_read_parquet`](#sparkreadparquet) ,
 [`spark_read_source`](#sparkreadsource) ,
 [`spark_read_table`](#sparkreadtable) ,
 [`spark_read_text`](#sparkreadtext) ,
 [`spark_read`](#sparkread) ,
 [`spark_save_table`](#sparksavetable) ,
 [`spark_write_avro`](#sparkwriteavro) ,
 [`spark_write_csv`](#sparkwritecsv) ,
 [`spark_write_delta`](#sparkwritedelta) ,
 [`spark_write_jdbc`](#sparkwritejdbc) ,
 [`spark_write_json`](#sparkwritejson) ,
 [`spark_write_orc`](#sparkwriteorc) ,
 [`spark_write_parquet`](#sparkwriteparquet) ,
 [`spark_write_source`](#sparkwritesource) ,
 [`spark_write_table`](#sparkwritetable) ,
 [`spark_write_text`](#sparkwritetext)


