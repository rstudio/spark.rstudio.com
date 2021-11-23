# `spark_coalesce_shuffle_partitions`

Retrieves or sets whether coalescing contiguous shuffle partitions is enabled


## Description

Retrieves or sets whether coalescing contiguous shuffle partitions is enabled


## Usage

```r
spark_coalesce_shuffle_partitions(sc, enable = NULL)
```


## Arguments

Argument      |Description
------------- |----------------
`sc`     |     A `spark_connection` .
`enable`     |     Whether to enable coalescing of contiguous shuffle partitions. Defaults to `NULL` to retrieve configuration entries.


## Seealso

Other Spark runtime configuration:
 [`spark_adaptive_query_execution`](#sparkadaptivequeryexecution) ,
 [`spark_advisory_shuffle_partition_size`](#sparkadvisoryshufflepartitionsize) ,
 [`spark_auto_broadcast_join_threshold`](#sparkautobroadcastjointhreshold) ,
 [`spark_coalesce_initial_num_partitions`](#sparkcoalesceinitialnumpartitions) ,
 [`spark_coalesce_min_num_partitions`](#sparkcoalesceminnumpartitions) ,
 [`spark_session_config`](#sparksessionconfig)


