# `stream_read_kafka`

Read Kafka Stream


## Description

Reads a Kafka stream as a Spark dataframe stream.


## Usage

```r
stream_read_kafka(sc, name = NULL, options = list(), ...)
```


## Arguments

Argument      |Description
------------- |----------------
`sc`     |     A `spark_connection` .
`name`     |     The name to assign to the newly generated stream.
`options`     |     A list of strings with additional options.
`...`     |     Optional arguments; currently unused.


## Details

Please note that Kafka requires installing the appropriate
 package by setting the `packages` parameter to `"kafka"` in `spark_connect()`


## Seealso

Other Spark stream serialization:
 [`stream_read_csv`](#streamreadcsv) ,
 [`stream_read_delta`](#streamreaddelta) ,
 [`stream_read_json`](#streamreadjson) ,
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
library(sparklyr)
sc <- spark_connect(master = "local", version = "2.3", packages = "kafka")

read_options <- list(kafka.bootstrap.servers = "localhost:9092", subscribe = "topic1")
write_options <- list(kafka.bootstrap.servers = "localhost:9092", topic = "topic2")

stream <- stream_read_kafka(sc, options = read_options) %>%
stream_write_kafka(options = write_options)

stream_stop(stream)
```


