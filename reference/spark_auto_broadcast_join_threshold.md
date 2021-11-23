# `spark_auto_broadcast_join_threshold`

Retrieves or sets the auto broadcast join threshold


## Description

Configures the maximum size in bytes for a table that will be broadcast to all worker nodes
 when performing a join. By setting this value to -1 broadcasting can be disabled. Note that
 currently statistics are only supported for Hive Metastore tables where the command
 `ANALYZE TABLE <tableName> COMPUTE STATISTICS noscan` has been run, and file-based data source
 tables where the statistics are computed directly on the files of data.


## Usage

```r
spark_auto_broadcast_join_threshold(sc, threshold = NULL)
```


## Arguments

Argument      |Description
------------- |----------------
`sc`     |     A `spark_connection` .
`threshold`     |     Maximum size in bytes for a table that will be broadcast to all worker nodes when performing a join. Defaults to `NULL` to retrieve configuration entries.


## Seealso

Other Spark runtime configuration:
 [`spark_adaptive_query_execution`](#sparkadaptivequeryexecution) ,
 [`spark_advisory_shuffle_partition_size`](#sparkadvisoryshufflepartitionsize) ,
 [`spark_coalesce_initial_num_partitions`](#sparkcoalesceinitialnumpartitions) ,
 [`spark_coalesce_min_num_partitions`](#sparkcoalesceminnumpartitions) ,
 [`spark_coalesce_shuffle_partitions`](#sparkcoalesceshufflepartitions) ,
 [`spark_session_config`](#sparksessionconfig)


