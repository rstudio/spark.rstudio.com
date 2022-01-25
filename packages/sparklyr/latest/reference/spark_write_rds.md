# spark_write_rds


Write Spark DataFrame to RDS files




## Description

Write Spark dataframe to RDS files. Each partition of the dataframe will be
exported to a separate RDS file so that all partitions can be processed in
parallel.





## Usage
```r
spark_write_rds(x, dest_uri)
```




## Arguments


Argument      |Description
------------- |----------------
x | A Spark DataFrame to be exported
dest_uri | Can be a URI template containing "partitionId" (e.g.,
"hdfs://my_data_part_partitionId.rds") where "partitionId" will be
substituted with ID of each partition using `glue`, or a list of URIs
to be assigned to RDS output from all partitions (e.g.,
"hdfs://my_data_part_0.rds", "hdfs://my_data_part_1.rds", and so on)
If working with a Spark instance running locally, then all URIs should be
in "file://<local file path>" form. Otherwise the scheme of the URI should
reflect the underlying file system the Spark instance is working with
(e.g., "hdfs://"). If the resulting list of URI(s) does not contain unique
values, then it will be post-processed with `make.unique()` to ensure
uniqueness.





## Value

A tibble containing partition ID and RDS file location for each
  partition of the input Spark dataframe.




