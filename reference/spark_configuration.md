# `spark_session_config`

Runtime configuration interface for the Spark Session


## Description

Retrieves or sets runtime configuration entries for the Spark Session


## Usage

```r
spark_session_config(sc, config = TRUE, value = NULL)
```


## Arguments

Argument      |Description
------------- |----------------
`sc`     |     A `spark_connection` .
`config`     |     The configuration entry name(s) (e.g., `"spark.sql.shuffle.partitions"` ). Defaults to `NULL` to retrieve all configuration entries.
`value`     |     The configuration value to be set. Defaults to `NULL` to retrieve configuration entries.


## Seealso

Other Spark runtime configuration:
 [`spark_adaptive_query_execution`](#sparkadaptivequeryexecution) ,
 [`spark_advisory_shuffle_partition_size`](#sparkadvisoryshufflepartitionsize) ,
 [`spark_auto_broadcast_join_threshold`](#sparkautobroadcastjointhreshold) ,
 [`spark_coalesce_initial_num_partitions`](#sparkcoalesceinitialnumpartitions) ,
 [`spark_coalesce_min_num_partitions`](#sparkcoalesceminnumpartitions) ,
 [`spark_coalesce_shuffle_partitions`](#sparkcoalesceshufflepartitions)


