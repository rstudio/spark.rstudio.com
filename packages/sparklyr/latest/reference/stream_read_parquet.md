# stream_read_parquet


Read Parquet Stream




## Description

Reads a parquet stream as a Spark dataframe stream.





## Usage
```r
stream_read_parquet(
  sc,
  path,
  name = NULL,
  columns = NULL,
  options = list(),
  ...
)
```




## Arguments


Argument      |Description
------------- |----------------
sc | A ``spark_connection``.
path | The path to the file. Needs to be accessible from the cluster. Supports the "hdfs://", "s3a://" and "file://" protocols.
name | The name to assign to the newly generated stream.
columns | A vector of column names or a named vector of column types. If specified, the elements can be ``"binary"`` for ``BinaryType``, ``"boolean"`` for ``BooleanType``, ``"byte"`` for ``ByteType``, ``"integer"`` for ``IntegerType``, ``"integer64"`` for ``LongType``, ``"double"`` for ``DoubleType``, ``"character"`` for ``StringType``, ``"timestamp"`` for ``TimestampType`` and ``"date"`` for ``DateType``.
options | A list of strings with additional options.
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
`stream_read_socket()`,
`stream_read_text()`,
`stream_write_console()`,
`stream_write_csv()`,
`stream_write_delta()`,
`stream_write_json()`,
`stream_write_kafka()`,
`stream_write_memory()`,
`stream_write_orc()`,
`stream_write_parquet()`,
`stream_write_text()`



