# spark_save_table


Saves a Spark DataFrame as a Spark table




## Description

Saves a Spark DataFrame and as a Spark table.





## Usage
```r
spark_save_table(x, path, mode = NULL, options = list())
```




## Arguments


Argument      |Description
------------- |----------------
x | A Spark DataFrame or dplyr operation
path | The path to the file. Needs to be accessible from the cluster.
Supports the "hdfs://", "s3a://" and "file://" protocols.
mode | A ``character`` element. Specifies the behavior when data or
  table already exists. Supported values include: 'error', 'append', 'overwrite' and
  ignore. Notice that 'overwrite' will also change the column structure.

  For more details see also http://spark.apache.org/docs/latest/sql-programming-guide.html#save-modes
  for your version of Spark.
options | A list of strings with additional options.







## See Also

Other Spark serialization routines: 
`collect_from_rds()`,
`spark_load_table()`,
`spark_read_avro()`,
`spark_read_binary()`,
`spark_read_csv()`,
`spark_read_delta()`,
`spark_read_image()`,
`spark_read_jdbc()`,
`spark_read_json()`,
`spark_read_libsvm()`,
`spark_read_orc()`,
`spark_read_parquet()`,
`spark_read_source()`,
`spark_read_table()`,
`spark_read_text()`,
`spark_read()`,
`spark_write_avro()`,
`spark_write_csv()`,
`spark_write_delta()`,
`spark_write_jdbc()`,
`spark_write_json()`,
`spark_write_orc()`,
`spark_write_parquet()`,
`spark_write_source()`,
`spark_write_table()`,
`spark_write_text()`



