# `spark_read_jdbc`

Read from JDBC connection into a Spark DataFrame.


## Description

Read from JDBC connection into a Spark DataFrame.


## Usage

```r
spark_read_jdbc(
  sc,
  name,
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
`options`     |     A list of strings with additional options. See [http://spark.apache.org/docs/latest/sql-programming-guide.html#configuration](http://spark.apache.org/docs/latest/sql-programming-guide.html#configuration) .
`repartition`     |     The number of partitions used to distribute the generated table. Use 0 (the default) to avoid partitioning.
`memory`     |     Boolean; should the data be loaded eagerly into memory? (That is, should the table be cached?)
`overwrite`     |     Boolean; overwrite the table with the given name if it already exists?
`columns`     |     A vector of column names or a named vector of column types. If specified, the elements can be `"binary"` for `BinaryType` , `"boolean"` for `BooleanType` , `"byte"` for `ByteType` , `"integer"` for `IntegerType` , `"integer64"` for `LongType` , `"double"` for `DoubleType` , `"character"` for `StringType` , `"timestamp"` for `TimestampType` and `"date"` for `DateType` .
`...`     |     Optional arguments; currently unused.


## Seealso

Other Spark serialization routines:
 [`collect_from_rds`](#collectfromrds) ,
 [`spark_load_table`](#sparkloadtable) ,
 [`spark_read_avro`](#sparkreadavro) ,
 [`spark_read_binary`](#sparkreadbinary) ,
 [`spark_read_csv`](#sparkreadcsv) ,
 [`spark_read_delta`](#sparkreaddelta) ,
 [`spark_read_image`](#sparkreadimage) ,
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


## Examples

```r
sc <- spark_connect(
master = "local",
config = list(
`sparklyr.shell.driver-class-path` = "/usr/share/java/mysql-connector-java-8.0.25.jar"
)
)
spark_read_jdbc(
sc,
name = "my_sql_table",
options = list(
url = "jdbc:mysql://localhost:3306/my_sql_schema",
driver = "com.mysql.jdbc.Driver",
user = "me",
password = "******",
dbtable = "my_sql_table"
)
)
```


