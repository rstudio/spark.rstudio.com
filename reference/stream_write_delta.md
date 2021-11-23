# `stream_write_delta`

Write Delta Stream


## Description

Writes a Spark dataframe stream into a Delta Lake table.


## Usage

```r
stream_write_delta(
  x,
  path,
  mode = c("append", "complete", "update"),
  checkpoint = file.path("checkpoints", random_string("")),
  options = list(),
  partition_by = NULL,
  ...
)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     A Spark DataFrame or dplyr operation
`path`     |     The path to the file. Needs to be accessible from the cluster. Supports the "hdfs://" , "s3a://" and "file://" protocols.
`mode`     |     Specifies how data is written to a streaming sink. Valid values are `"append"` , `"complete"` or `"update"` .
`checkpoint`     |     The location where the system will write all the checkpoint information to guarantee end-to-end fault-tolerance.
`options`     |     A list of strings with additional options.
`partition_by`     |     Partitions the output by the given list of columns.
`...`     |     Optional arguments; currently unused.


## Details

Please note that Delta Lake requires installing the appropriate
 package by setting the `packages` parameter to `"delta"` in `spark_connect()`


## Seealso

Other Spark stream serialization:
 [`stream_read_csv`](#streamreadcsv) ,
 [`stream_read_delta`](#streamreaddelta) ,
 [`stream_read_json`](#streamreadjson) ,
 [`stream_read_kafka`](#streamreadkafka) ,
 [`stream_read_orc`](#streamreadorc) ,
 [`stream_read_parquet`](#streamreadparquet) ,
 [`stream_read_socket`](#streamreadsocket) ,
 [`stream_read_text`](#streamreadtext) ,
 [`stream_write_console`](#streamwriteconsole) ,
 [`stream_write_csv`](#streamwritecsv) ,
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

dir.create("text-in")
writeLines("A text entry", "text-in/text.txt")

text_path <- file.path("file://", getwd(), "text-in")

stream <- stream_read_text(sc, text_path) %>% stream_write_delta(path = "delta-test")

stream_stop(stream)
```


