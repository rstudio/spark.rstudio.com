# spark_dependency_fallback


Fallback to Spark Dependency




## Description

Helper function to assist falling back to previous Spark versions.





## Usage
```r
spark_dependency_fallback(spark_version, supported_versions)
```




## Arguments


Argument      |Description
------------- |----------------
spark_version | The Spark version being requested in ``spark_dependencies``.
supported_versions | The Spark versions that are supported by this extension.





## Value

A Spark version to use.





