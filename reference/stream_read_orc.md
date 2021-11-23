# `stream_read_orc`

Read ORC Stream


## Description

Reads an [ORC](https://orc.apache.org/) stream as a Spark dataframe stream.


## Usage

```r
stream_read_orc(sc, path, name = NULL, columns = NULL, options = list(), ...)
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
 [`stream_read_json`](#streamreadjson) ,
 [`stream_read_kafka`](#streamreadkafka) ,
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

sdf_len(sc, 10) %>% spark_write_orc("orc-in")

stream <- stream_read_orc(sc, "orc-in") %>% stream_write_orc("orc-out")

stream_stop(stream)
```


