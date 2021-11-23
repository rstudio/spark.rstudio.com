# `stream_read_text`

Read Text Stream


## Description

Reads a text stream as a Spark dataframe stream.


## Usage

```r
stream_read_text(sc, path, name = NULL, options = list(), ...)
```


## Arguments

Argument      |Description
------------- |----------------
`sc`     |     A `spark_connection` .
`path`     |     The path to the file. Needs to be accessible from the cluster. Supports the "hdfs://" , "s3a://" and "file://" protocols.
`name`     |     The name to assign to the newly generated stream.
`options`     |     A list of strings with additional options.
`...`     |     Optional arguments; currently unused.


## Seealso

Other Spark stream serialization:
 [`stream_read_csv`](#streamreadcsv) ,
 [`stream_read_delta`](#streamreaddelta) ,
 [`stream_read_json`](#streamreadjson) ,
 [`stream_read_kafka`](#streamreadkafka) ,
 [`stream_read_orc`](#streamreadorc) ,
 [`stream_read_parquet`](#streamreadparquet) ,
 [`stream_read_socket`](#streamreadsocket) ,
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

dir.create("text-in")
writeLines("A text entry", "text-in/text.txt")

text_path <- file.path("file://", getwd(), "text-in")

stream <- stream_read_text(sc, text_path) %>% stream_write_text("text-out")

stream_stop(stream)
```


