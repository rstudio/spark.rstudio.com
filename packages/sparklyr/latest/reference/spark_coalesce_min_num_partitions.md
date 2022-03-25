# spark_coalesce_min_num_partitions


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
sc | A ``spark_connection``.
num_partitions | Minimum number of shuffle partitions after coalescing. Defaults to ``NULL`` to retrieve configuration entries.







## See Also

Other Spark runtime configuration: 
`spark_adaptive_query_execution()`,
`spark_advisory_shuffle_partition_size()`,
`spark_auto_broadcast_join_threshold()`,
`spark_coalesce_initial_num_partitions()`,
`spark_coalesce_shuffle_partitions()`,
`spark_session_config()`



