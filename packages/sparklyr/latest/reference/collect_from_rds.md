# collect_from_rds


Collect Spark data serialized in RDS format into R




## Description

Deserialize Spark data that is serialized using `spark_write_rds()` into a R
dataframe.





## Usage
```r
collect_from_rds(path)
```




## Arguments


Argument      |Description
------------- |----------------
path | Path to a local RDS file that is produced by `spark_write_rds()` (RDS files stored in HDFS will need to be downloaded to local filesystem first (e.g., by running `hadoop fs -copyToLocal ...` or similar)







## See Also

Other Spark serialization routines: 
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
`spark_save_table()`,
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


