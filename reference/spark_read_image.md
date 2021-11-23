# `spark_read_image`

Read image data into a Spark DataFrame.


## Description

Read image files within a directory and convert each file into a record
 within the resulting Spark dataframe. The output will be a Spark dataframe
 consisting of struct types containing the following attributes:
    

*  origin: StringType   

*  height: IntegerType   

*  width: IntegerType   

*  nChannels: IntegerType   

*  mode: IntegerType   

*  data: BinaryType


## Usage

```r
spark_read_image(
  sc,
  name = NULL,
  dir = name,
  drop_invalid = TRUE,
  repartition = 0,
  memory = TRUE,
  overwrite = TRUE
)
```


## Arguments

Argument      |Description
------------- |----------------
`sc`     |     A `spark_connection` .
`name`     |     The name to assign to the newly generated table.
`dir`     |     Directory to read binary files from.
`drop_invalid`     |     Whether to drop files that are not valid images from the result (default: TRUE).
`repartition`     |     The number of partitions used to distribute the generated table. Use 0 (the default) to avoid partitioning.
`memory`     |     Boolean; should the data be loaded eagerly into memory? (That is, should the table be cached?)
`overwrite`     |     Boolean; overwrite the table with the given name if it already exists?


## Seealso

Other Spark serialization routines:
 [`collect_from_rds`](#collectfromrds) ,
 [`spark_load_table`](#sparkloadtable) ,
 [`spark_read_avro`](#sparkreadavro) ,
 [`spark_read_binary`](#sparkreadbinary) ,
 [`spark_read_csv`](#sparkreadcsv) ,
 [`spark_read_delta`](#sparkreaddelta) ,
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


