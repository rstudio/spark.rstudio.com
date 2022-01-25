# spark_adaptive_query_execution


Retrieves or sets status of Spark AQE




## Description

Retrieves or sets whether Spark adaptive query execution is enabled





## Usage
```r
spark_adaptive_query_execution(sc, enable = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
sc | A ``spark_connection``.
enable | Whether to enable Spark adaptive query execution. Defaults to
``NULL`` to retrieve configuration entries.







## See Also

Other Spark runtime configuration: 
`spark_advisory_shuffle_partition_size()`,
`spark_auto_broadcast_join_threshold()`,
`spark_coalesce_initial_num_partitions()`,
`spark_coalesce_min_num_partitions()`,
`spark_coalesce_shuffle_partitions()`,
`spark_session_config()`


