# `spark_write_avro`

Serialize a Spark DataFrame into Apache Avro format


## Description

Serialize a Spark DataFrame into Apache Avro format.
 Notice this functionality requires the Spark connection `sc` to be instantiated with either
 an explicitly specified Spark version (i.e.,
 `spark_connect(..., version = <version>, packages = c("avro", <other package(s)>), ...)` )
 or a specific version of Spark avro package to use (e.g.,
 `spark_connect(..., packages = c("org.apache.spark:spark-avro_2.12:3.0.0", <other package(s)>), ...)` ).


## Usage

```r
spark_write_avro(
  x,
  path,
  avro_schema = NULL,
  record_name = "topLevelRecord",
  record_namespace = "",
  compression = "snappy",
  partition_by = NULL
)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     A Spark DataFrame or dplyr operation
`path`     |     The path to the file. Needs to be accessible from the cluster. Supports the "hdfs://" , "s3a://" and "file://" protocols.
`avro_schema`     |     Optional Avro schema in JSON format
`record_name`     |     Optional top level record name in write result (default: "topLevelRecord")
`record_namespace`     |     Record namespace in write result (default: "")
`compression`     |     Compression codec to use (default: "snappy")
`partition_by`     |     A `character` vector. Partitions the output by the given columns on the file system.


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
 [`spark_read_json`](#sparkreadjson) ,
 [`spark_read_libsvm`](#sparkreadlibsvm) ,
 [`spark_read_orc`](#sparkreadorc) ,
 [`spark_read_parquet`](#sparkreadparquet) ,
 [`spark_read_source`](#sparkreadsource) ,
 [`spark_read_table`](#sparkreadtable) ,
 [`spark_read_text`](#sparkreadtext) ,
 [`spark_read`](#sparkread) ,
 [`spark_save_table`](#sparksavetable) ,
 [`spark_write_csv`](#sparkwritecsv) ,
 [`spark_write_delta`](#sparkwritedelta) ,
 [`spark_write_jdbc`](#sparkwritejdbc) ,
 [`spark_write_json`](#sparkwritejson) ,
 [`spark_write_orc`](#sparkwriteorc) ,
 [`spark_write_parquet`](#sparkwriteparquet) ,
 [`spark_write_source`](#sparkwritesource) ,
 [`spark_write_table`](#sparkwritetable) ,
 [`spark_write_text`](#sparkwritetext)


