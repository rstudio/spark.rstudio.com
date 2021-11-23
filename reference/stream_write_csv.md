# `stream_write_csv`

Write CSV Stream


## Description

Writes a Spark dataframe stream into a tabular (typically, comma-separated) stream.


## Usage

```r
stream_write_csv(
  x,
  path,
  mode = c("append", "complete", "update"),
  trigger = stream_trigger_interval(),
  checkpoint = file.path(path, "checkpoint"),
  header = TRUE,
  delimiter = ",",
  quote = "\"",
  escape = "\\",
  charset = "UTF-8",
  null_value = NULL,
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
`trigger`     |     The trigger for the stream query, defaults to micro-batches runnnig every 5 seconds. See [`stream_trigger_interval`](#streamtriggerinterval) and [`stream_trigger_continuous`](#streamtriggercontinuous) .
`checkpoint`     |     The location where the system will write all the checkpoint information to guarantee end-to-end fault-tolerance.
`header`     |     Should the first row of data be used as a header? Defaults to `TRUE` .
`delimiter`     |     The character used to delimit each column, defaults to `,` .
`quote`     |     The character used as a quote. Defaults to '"' .
`escape`     |     The character used to escape other characters, defaults to `\` .
`charset`     |     The character set, defaults to `"UTF-8"` .
`null_value`     |     The character to use for default values, defaults to `NULL` .
`options`     |     A list of strings with additional options.
`partition_by`     |     Partitions the output by the given list of columns.
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
 [`stream_read_text`](#streamreadtext) ,
 [`stream_write_console`](#streamwriteconsole) ,
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


