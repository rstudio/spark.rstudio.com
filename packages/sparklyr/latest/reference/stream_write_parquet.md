# stream_write_parquet


Write Parquet Stream




## Description

Writes a Spark dataframe stream into a parquet stream.





## Usage
```r
stream_write_parquet(
  x,
  path,
  mode = c("append", "complete", "update"),
  trigger = stream_trigger_interval(),
  checkpoint = file.path(path, "checkpoints", random_string("")),
  options = list(),
  partition_by = NULL,
  ...
)
```




## Arguments


Argument      |Description
------------- |----------------
x | A Spark DataFrame or dplyr operation
path | The destination path. Needs to be accessible from the cluster. Supports the "hdfs://", "s3a://" and "file://" protocols.
mode | Specifies how data is written to a streaming sink. Valid values are ``"append"``, ``"complete"`` or ``"update"``.
trigger | The trigger for the stream query, defaults to micro-batches runnnig every 5 seconds. See `stream_trigger_interval` and `stream_trigger_continuous`.
checkpoint | The location where the system will write all the checkpoint information to guarantee end-to-end fault-tolerance.
options | A list of strings with additional options.
partition_by | Partitions the output by the given list of columns.
... | Optional arguments; currently unused.






## Examples

```r


sc <- spark_connect(master = "local")

sdf_len(sc, 10) %>% spark_write_parquet("parquet-in")

stream <- stream_read_parquet(sc, "parquet-in") %>% stream_write_parquet("parquet-out")

stream_stop(stream)

```






## See Also

Other Spark stream serialization: 
`stream_read_csv()`,
`stream_read_delta()`,
`stream_read_json()`,
`stream_read_kafka()`,
`stream_read_orc()`,
`stream_read_parquet()`,
`stream_read_socket()`,
`stream_read_text()`,
`stream_write_console()`,
`stream_write_csv()`,
`stream_write_delta()`,
`stream_write_json()`,
`stream_write_kafka()`,
`stream_write_memory()`,
`stream_write_orc()`,
`stream_write_text()`



