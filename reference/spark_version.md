# spark_version


Get the Spark Version Associated with a Spark Connection




## Description

Retrieve the version of Spark associated with a Spark connection.





## Usage
```r
spark_version(sc)
```




## Arguments


Argument      |Description
------------- |----------------
sc | A ``spark_connection``.




## Details

Suffixes for e.g. preview versions, or snapshotted versions,
are trimmed -- if you require the full Spark version, you can
retrieve it with ``invoke(spark_context(sc), "version")``.





## Value

The Spark version as a `numeric_version`.





