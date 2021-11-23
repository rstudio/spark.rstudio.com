# `stream_write_console`

Write Console Stream


## Description

Writes a Spark dataframe stream into console logs.


## Usage

```r
stream_write_console(
  x,
  mode = c("append", "complete", "update"),
  options = list(),
  trigger = stream_trigger_interval(),
  partition_by = NULL,
  ...
)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     A Spark DataFrame or dplyr operation
`mode`     |     Specifies how data is written to a streaming sink. Valid values are `"append"` , `"complete"` or `"update"` .
`options`     |     A list of strings with additional options.
`trigger`     |     The trigger for the stream query, defaults to micro-batches runnnig every 5 seconds. See [`stream_trigger_interval`](#streamtriggerinterval) and [`stream_trigger_continuous`](#streamtriggercontinuous) .
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

sdf_len(sc, 10) %>%
dplyr::transmute(text = as.character(id)) %>%
spark_write_text("text-in")

stream <- stream_read_text(sc, "text-in") %>% stream_write_console()

stream_stop(stream)
```


