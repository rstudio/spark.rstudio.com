# spark_coalesce_shuffle_partitions


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
sc | A ``spark_connection``.
enable | Whether to enable coalescing of contiguous shuffle partitions.
Defaults to ``NULL`` to retrieve configuration entries.







## See Also

Other Spark runtime configuration: 
`spark_adaptive_query_execution()`,
`spark_advisory_shuffle_partition_size()`,
`spark_auto_broadcast_join_threshold()`,
`spark_coalesce_initial_num_partitions()`,
`spark_coalesce_min_num_partitions()`,
`spark_session_config()`


