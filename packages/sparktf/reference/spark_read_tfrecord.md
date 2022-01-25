# spark_read_tfrecord


Read a TFRecord File




## Description

Read a TFRecord file as a Spark DataFrame.





## Usage
```r
spark_read_tfrecord(sc, name, path, schema = NULL,
  record_type = c("Example", "SequenceExample"), overwrite = TRUE)
```




## Arguments


Argument      |Description
------------- |----------------
sc | A spark conneciton.
name | The name to assign to the newly generated table.
path | The path to the file. Needs to be accessible from the cluster. Supports the "hdfs://", "s3a://" and "file://" protocols.
schema | (Currently unsupported.) Schema of TensorFlow records.  If not provided, the schema is inferred from TensorFlow records.
record_type | Input format of TensorFlow records. By default it is Example.
overwrite | Boolean; overwrite the table with the given name if it already exists?





