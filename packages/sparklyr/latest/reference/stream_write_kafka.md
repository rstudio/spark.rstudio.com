# stream_write_kafka


Write Kafka Stream




## Description

Writes a Spark dataframe stream into an kafka stream.





## Usage
```r
stream_write_kafka(
  x,
  mode = c("append", "complete", "update"),
  trigger = stream_trigger_interval(),
  checkpoint = file.path("checkpoints", random_string("")),
  options = list(),
  partition_by = NULL,
  ...
)
```




## Arguments


Argument      |Description
------------- |----------------
x | A Spark DataFrame or dplyr operation
mode | Specifies how data is written to a streaming sink. Valid values are ``"append"``, ``"complete"`` or ``"update"``.
trigger | The trigger for the stream query, defaults to micro-batches runnnig every 5 seconds. See `stream_trigger_interval` and `stream_trigger_continuous`.
checkpoint | The location where the system will write all the checkpoint information to guarantee end-to-end fault-tolerance.
options | A list of strings with additional options.
partition_by | Partitions the output by the given list of columns.
... | Optional arguments; currently unused.




## Details

Please note that Kafka requires installing the appropriate
 package by setting the ``packages`` parameter to ``"kafka"`` in ``spark_connect()``






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
`stream_write_memory()`,
`stream_write_orc()`,
`stream_write_parquet()`,
`stream_write_text()`



