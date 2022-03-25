# stream_read_text


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
sc | A ``spark_connection``.
path | The path to the file. Needs to be accessible from the cluster. Supports the "hdfs://", "s3a://" and "file://" protocols.
name | The name to assign to the newly generated stream.
options | A list of strings with additional options.
... | Optional arguments; currently unused.






## Examples

```r


sc <- spark_connect(master = "local")

dir.create("text-in")
writeLines("A text entry", "text-in/text.txt")

text_path <- file.path("file://", getwd(), "text-in")

stream <- stream_read_text(sc, text_path) %>% stream_write_text("text-out")

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
`stream_write_console()`,
`stream_write_csv()`,
`stream_write_delta()`,
`stream_write_json()`,
`stream_write_kafka()`,
`stream_write_memory()`,
`stream_write_orc()`,
`stream_write_parquet()`,
`stream_write_text()`



