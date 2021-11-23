# `spark_coalesce_initial_num_partitions`

Retrieves or sets initial number of shuffle partitions before coalescing


## Description

Retrieves or sets initial number of shuffle partitions before coalescing


## Usage

```r
spark_coalesce_initial_num_partitions(sc, num_partitions = NULL)
```


## Arguments

Argument      |Description
------------- |----------------
`sc`     |     A `spark_connection` .
`num_partitions`     |     Initial number of shuffle partitions before coalescing. Defaults to `NULL` to retrieve configuration entries.


## Seealso

Other Spark runtime configuration:
 [`spark_adaptive_query_execution`](#sparkadaptivequeryexecution) ,
 [`spark_advisory_shuffle_partition_size`](#sparkadvisoryshufflepartitionsize) ,
 [`spark_auto_broadcast_join_threshold`](#sparkautobroadcastjointhreshold) ,
 [`spark_coalesce_min_num_partitions`](#sparkcoalesceminnumpartitions) ,
 [`spark_coalesce_shuffle_partitions`](#sparkcoalesceshufflepartitions) ,
 [`spark_session_config`](#sparksessionconfig)


