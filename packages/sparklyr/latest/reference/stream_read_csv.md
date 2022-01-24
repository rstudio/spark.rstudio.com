# stream_read_csv


Read CSV Stream




## Description

Reads a CSV stream as a Spark dataframe stream.





## Usage
```r
stream_read_csv(
  sc,
  path,
  name = NULL,
  header = TRUE,
  columns = NULL,
  delimiter = ",",
  quote = "\"",
  escape = "\\",
  charset = "UTF-8",
  null_value = NULL,
  options = list(),
  ...
)
```




## Arguments


Argument      |Description
------------- |----------------
sc | A ``spark_connection``.
path | The path to the file. Needs to be accessible from the cluster.
Supports the "hdfs://", "s3a://" and "file://" protocols.
name | The name to assign to the newly generated stream.
header | Boolean; should the first row of data be used as a header?
Defaults to ``TRUE``.
columns | A vector of column names or a named vector of column types.
If specified, the elements can be ``"binary"`` for ``BinaryType``,
``"boolean"`` for ``BooleanType``, ``"byte"`` for ``ByteType``,
``"integer"`` for ``IntegerType``, ``"integer64"`` for ``LongType``,
``"double"`` for ``DoubleType``, ``"character"`` for ``StringType``,
``"timestamp"`` for ``TimestampType`` and ``"date"`` for ``DateType``.
delimiter | The character used to delimit each column. Defaults to ','.
quote | The character used as a quote. Defaults to '"'.
escape | The character used to escape other characters. Defaults to '\'.
charset | The character set. Defaults to "UTF-8".
null_value | The character to use for null, or missing, values. Defaults to ``NULL``.
options | A list of strings with additional options.
... | Optional arguments; currently unused.






## Examples

```r


sc <- spark_connect(master = "local")

dir.create("csv-in")
write.csv(iris, "csv-in/data.csv", row.names = FALSE)

csv_path <- file.path("file://", getwd(), "csv-in")

stream <- stream_read_csv(sc, csv_path) %>% stream_write_csv("csv-out")

stream_stop(stream)

```






## See Also

Other Spark stream serialization: 
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
`stream_write_parquet()`,
`stream_write_text()`



