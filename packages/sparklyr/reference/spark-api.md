# spark-api


Access the Spark API




## Description

Access the commonly-used Spark objects associated with a Spark instance.
These objects provide access to different facets of the Spark API.





## Usage
```r
spark_context(sc)

java_context(sc)

hive_context(sc)

spark_session(sc)
```




## Arguments


Argument      |Description
------------- |----------------
sc | A ``spark_connection``.




## Details

The http://spark.apache.org/docs/latest/api/scala/#packageScala API documentation
is useful for discovering what methods are available for each of these
objects. Use `invoke` to call methods on these objects.






