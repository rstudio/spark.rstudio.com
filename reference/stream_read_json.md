# `stream_read_json`

Read JSON Stream


## Description

Reads a JSON stream as a Spark dataframe stream.


## Usage

```r
stream_read_json(sc, path, name = NULL, columns = NULL, options = list(), ...)
```


## Arguments

Argument      |Description
------------- |----------------
`sc`     |     A `spark_connection` .
`path`     |     The path to the file. Needs to be accessible from the cluster. Supports the "hdfs://" , "s3a://" and "file://" protocols.
`name`     |     The name to assign to the newly generated stream.
`columns`     |     A vector of column names or a named vector of column types. If specified, the elements can be `"binary"` for `BinaryType` , `"boolean"` for `BooleanType` , `"byte"` for `ByteType` , `"integer"` for `IntegerType` , `"integer64"` for `LongType` , `"double"` for `DoubleType` , `"character"` for `StringType` , `"timestamp"` for `TimestampType` and `"date"` for `DateType` .
`options`     |     A list of strings with additional options.
`...`     |     Optional arguments; currently unused.


## Seealso

Other Spark stream serialization:
 [`stream_read_csv`](#streamreadcsv) ,
 [`stream_read_delta`](#streamreaddelta) ,
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

dir.create("json-in")
jsonlite::write_json(list(a = c(1, 2), b = c(10, 20)), "json-in/data.json")

json_path <- file.path("file://", getwd(), "json-in")

stream <- stream_read_json(sc, json_path) %>% stream_write_json("json-out")

stream_stop(stream)
```


