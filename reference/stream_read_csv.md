# `stream_read_csv`

Read CSV Stream


## Description

Reads a CSV stream as a Spark dataframe stream.


## Usage

```r
stream_read_csv(
  sc,
  path,
  name = NULL,
  header = TRUE,
  columns = NULL,
  delimiter = ",",
  quote = "\"",
  escape = "\\",
  charset = "UTF-8",
  null_value = NULL,
  options = list(),
  ...
)
```


## Arguments

Argument      |Description
------------- |----------------
`sc`     |     A `spark_connection` .
`path`     |     The path to the file. Needs to be accessible from the cluster. Supports the "hdfs://" , "s3a://" and "file://" protocols.
`name`     |     The name to assign to the newly generated stream.
`header`     |     Boolean; should the first row of data be used as a header? Defaults to `TRUE` .
`columns`     |     A vector of column names or a named vector of column types. If specified, the elements can be `"binary"` for `BinaryType` , `"boolean"` for `BooleanType` , `"byte"` for `ByteType` , `"integer"` for `IntegerType` , `"integer64"` for `LongType` , `"double"` for `DoubleType` , `"character"` for `StringType` , `"timestamp"` for `TimestampType` and `"date"` for `DateType` .
`delimiter`     |     The character used to delimit each column. Defaults to ',' .
`quote`     |     The character used as a quote. Defaults to '"' .
`escape`     |     The character used to escape other characters. Defaults to '\' .
`charset`     |     The character set. Defaults to "UTF-8" .
`null_value`     |     The character to use for null, or missing, values. Defaults to `NULL` .
`options`     |     A list of strings with additional options.
`...`     |     Optional arguments; currently unused.


## Seealso

Other Spark stream serialization:
 [`stream_read_delta`](#streamreaddelta) ,
 [`stream_read_json`](#streamreadjson) ,
 [`stream_read_kafka`](#streamreadkafka) ,
 [`stream_read_orc`](#streamreadorc) ,
 [`stream_read_parquet`](#streamreadparquet) ,
 [`stream_read_socket`](#streamreadsocket) ,
 [`stream_read_text`](#streamreadtext) ,
 [`stream_write_console`](#streamwriteconsole) ,
 [`stream_write_csv`](#streamwritecsv) ,
 [`stream_write_delta`](#streamwritedelta) ,
 [`stream_write_json`](#streamwritejson) ,
 [`stream_write_kafka`](#streamwritekafka) ,
 [`stream_write_memory`](#streamwritememory) ,
 [`stream_write_orc`](#streamwriteorc) ,
 [`stream_write_parquet`](#streamwriteparquet) ,
 [`stream_write_text`](#streamwritetext)


## Examples

```r
sc <- spark_connect(master = "local")

dir.create("csv-in")
write.csv(iris, "csv-in/data.csv", row.names = FALSE)

csv_path <- file.path("file://", getwd(), "csv-in")

stream <- stream_read_csv(sc, csv_path) %>% stream_write_csv("csv-out")

stream_stop(stream)
```


