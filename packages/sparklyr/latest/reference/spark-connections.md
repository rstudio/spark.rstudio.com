# spark-connections


Manage Spark Connections




## Description

These routines allow you to manage your connections to Spark.

Call `spark_disconnect()` on each open Spark connection





## Usage
```r
spark_connect(
  master,
  spark_home = Sys.getenv("SPARK_HOME"),
  method = c("shell", "livy", "databricks", "test", "qubole"),
  app_name = "sparklyr",
  version = NULL,
  config = spark_config(),
  extensions = sparklyr::registered_extensions(),
  packages = NULL,
  scala_version = NULL,
  ...
)

spark_connection_is_open(sc)

spark_disconnect(sc, ...)

spark_disconnect_all(...)

spark_submit(
  master,
  file,
  spark_home = Sys.getenv("SPARK_HOME"),
  app_name = "sparklyr",
  version = NULL,
  config = spark_config(),
  extensions = sparklyr::registered_extensions(),
  scala_version = NULL,
  ...
)
```




## Arguments


Argument      |Description
------------- |----------------
master | Spark cluster url to connect to. Use ``"local"`` to connect to a local instance of Spark installed via `spark_install`.
spark_home | The path to a Spark installation. Defaults to the path provided by the ``SPARK_HOME`` environment variable. If ``SPARK_HOME`` is defined, it will always be used unless the ``version`` parameter is specified to force the use of a locally installed version.
method | The method used to connect to Spark. Default connection method is ``"shell"`` to connect using spark-submit, use ``"livy"`` to perform remote connections using HTTP, or ``"databricks"`` when using a Databricks clusters.
app_name | The application name to be used while running in the Spark cluster.
version | The version of Spark to use. Required for ``"local"`` Spark connections, optional otherwise.
config | Custom configuration for the generated Spark connection. See `spark_config` for details.
extensions | Extension R packages to enable for this connection. By default, all packages enabled through the use of `sparklyr::register_extension` will be passed here.
packages | A list of Spark packages to load. For example, ``"delta"`` or ``"kafka"`` to enable Delta Lake or Kafka. Also supports full versions like ``"io.delta:delta-core_2.11:0.4.0"``. This is similar to adding packages into the ``sparklyr.shell.packages`` configuration option. Notice that the ``version`` parameter is used to choose the correct package, otherwise assumes the latest version is being used.
scala_version | Load the sparklyr jar file that is built with the version of Scala specified (this currently only makes sense for Spark 2.4, where sparklyr will by default assume Spark 2.4 on current host is built with Scala 2.11, and therefore `scala_version = '2.12'` is needed if sparklyr is connecting to Spark 2.4 built with Scala 2.12)
... | Additional params to be passed to each `spark_disconnect()` call (e.g., `terminate = TRUE`)
sc | A ``spark_connection``.
file | Path to R source file to submit for batch execution.




## Details

By default, when using ``method = "livy"``, jars are downloaded from GitHub. But
an alternative path (local to Livy server or on HDFS or HTTP(s)) to ``sparklyr``
JAR can also be specified through the ``sparklyr.livy.jar`` setting.






## Examples
```r
conf <- spark_config()
conf$`sparklyr.shell.conf` <- c(
  "spark.executor.extraJavaOptions=-Duser.timezone='UTC'",
  "spark.driver.extraJavaOptions=-Duser.timezone='UTC'",
  "spark.sql.session.timeZone='UTC'"
)

sc <- spark_connect(
  master = "spark://HOST:PORT", config = conf
)
connection_is_open(sc)

spark_disconnect(sc)
```



