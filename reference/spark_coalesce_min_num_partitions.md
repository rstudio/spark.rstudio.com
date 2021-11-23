# `spark_coalesce_min_num_partitions`

Retrieves or sets the minimum number of shuffle partitions after coalescing


## Description

Retrieves or sets the minimum number of shuffle partitions after coalescing


## Usage

```r
spark_coalesce_min_num_partitions(sc, num_partitions = NULL)
```


## Arguments

Argument      |Description
------------- |----------------
`sc`     |     A `spark_connection` .
`num_partitions`     |     Minimum number of shuffle partitions after coalescing. Defaults to `NULL` to retrieve configuration entries.


## Seealso

Other Spark runtime configuration:
 [`spark_adaptive_query_execution`](#sparkadaptivequeryexecution) ,
 [`spark_advisory_shuffle_partition_size`](#sparkadvisoryshufflepartitionsize) ,
 [`spark_auto_broadcast_join_threshold`](#sparkautobroadcastjointhreshold) ,
 [`spark_coalesce_initial_num_partitions`](#sparkcoalesceinitialnumpartitions) ,
 [`spark_coalesce_shuffle_partitions`](#sparkcoalesceshufflepartitions) ,
 [`spark_session_config`](#sparksessionconfig)


