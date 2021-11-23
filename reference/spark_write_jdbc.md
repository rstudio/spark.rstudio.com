# `spark_write_jdbc`

Writes a Spark DataFrame into a JDBC table


## Description

Writes a Spark DataFrame into a JDBC table.


## Usage

```r
spark_write_jdbc(
  x,
  name,
  mode = NULL,
  options = list(),
  partition_by = NULL,
  ...
)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     A Spark DataFrame or dplyr operation
`name`     |     The name to assign to the newly generated table.
`mode`     |     A `character` element. Specifies the behavior when data or table already exists. Supported values include: 'error', 'append', 'overwrite' and ignore. Notice that 'overwrite' will also change the column structure.  For more details see also [http://spark.apache.org/docs/latest/sql-programming-guide.html#save-modes](http://spark.apache.org/docs/latest/sql-programming-guide.html#save-modes)  for your version of Spark.
`options`     |     A list of strings with additional options.
`partition_by`     |     A `character` vector. Partitions the output by the given columns on the file system.
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
spark_write_jdbc(
sdf_len(sc, 10),
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


