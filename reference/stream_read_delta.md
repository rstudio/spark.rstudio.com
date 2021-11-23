# `stream_read_delta`

Read Delta Stream


## Description

Reads a Delta Lake table as a Spark dataframe stream.


## Usage

```r
stream_read_delta(sc, path, name = NULL, options = list(), ...)
```


## Arguments

Argument      |Description
------------- |----------------
`sc`     |     A `spark_connection` .
`path`     |     The path to the file. Needs to be accessible from the cluster. Supports the "hdfs://" , "s3a://" and "file://" protocols.
`name`     |     The name to assign to the newly generated stream.
`options`     |     A list of strings with additional options.
`...`     |     Optional arguments; currently unused.


## Details

Please note that Delta Lake requires installing the appropriate
 package by setting the `packages` parameter to `"delta"` in `spark_connect()`


## Seealso

Other Spark stream serialization:
 [`stream_read_csv`](#streamreadcsv) ,
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
library(sparklyr)
sc <- spark_connect(master = "local", version = "2.4.0", packages = "delta")

sdf_len(sc, 5) %>% spark_write_delta(path = "delta-test")

stream <- stream_read_delta(sc, "delta-test") %>%
stream_write_json("json-out")

stream_stop(stream)
```


