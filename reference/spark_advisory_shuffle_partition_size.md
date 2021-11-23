# `spark_advisory_shuffle_partition_size`

Retrieves or sets advisory size of the shuffle partition


## Description

Retrieves or sets advisory size in bytes of the shuffle partition during adaptive optimization


## Usage

```r
spark_advisory_shuffle_partition_size(sc, size = NULL)
```


## Arguments

Argument      |Description
------------- |----------------
`sc`     |     A `spark_connection` .
`size`     |     Advisory size in bytes of the shuffle partition. Defaults to `NULL` to retrieve configuration entries.


## Seealso

Other Spark runtime configuration:
 [`spark_adaptive_query_execution`](#sparkadaptivequeryexecution) ,
 [`spark_auto_broadcast_join_threshold`](#sparkautobroadcastjointhreshold) ,
 [`spark_coalesce_initial_num_partitions`](#sparkcoalesceinitialnumpartitions) ,
 [`spark_coalesce_min_num_partitions`](#sparkcoalesceminnumpartitions) ,
 [`spark_coalesce_shuffle_partitions`](#sparkcoalesceshufflepartitions) ,
 [`spark_session_config`](#sparksessionconfig)


