# spark_read_jdbc


Read from JDBC connection into a Spark DataFrame.




## Description

Read from JDBC connection into a Spark DataFrame.





## Usage
```r
spark_read_jdbc(
  sc,
  name,
  options = list(),
  repartition = 0,
  memory = TRUE,
  overwrite = TRUE,
  columns = NULL,
  ...
)
```




## Arguments


Argument      |Description
------------- |----------------
sc | A ``spark_connection``.
name | The name to assign to the newly generated table.
options | A list of strings with additional options. See http://spark.apache.org/docs/latest/sql-programming-guide.html#configuration.
repartition | The number of partitions used to distribute the
generated table. Use 0 (the default) to avoid partitioning.
memory | Boolean; should the data be loaded eagerly into memory? (That
is, should the table be cached?)
overwrite | Boolean; overwrite the table with the given name if it
already exists?
columns | A vector of column names or a named vector of column types.
If specified, the elements can be ``"binary"`` for ``BinaryType``,
``"boolean"`` for ``BooleanType``, ``"byte"`` for ``ByteType``,
``"integer"`` for ``IntegerType``, ``"integer64"`` for ``LongType``,
``"double"`` for ``DoubleType``, ``"character"`` for ``StringType``,
``"timestamp"`` for ``TimestampType`` and ``"date"`` for ``DateType``.
... | Optional arguments; currently unused.






## Examples

```r

sc <- spark_connect(
  master = "local",
  config = list(
    `sparklyr.shell.driver-class-path` = "/usr/share/java/mysql-connector-java-8.0.25.jar"
  )
)
spark_read_jdbc(
  sc,
  name = "my_sql_table",
  options = list(
    url = "jdbc:mysql://localhost:3306/my_sql_schema",
    driver = "com.mysql.jdbc.Driver",
    user = "me",
    password = "******",
    dbtable = "my_sql_table"
  )
)

```






## See Also

Other Spark serialization routines: 
`collect_from_rds()`,
`spark_load_table()`,
`spark_read_avro()`,
`spark_read_binary()`,
`spark_read_csv()`,
`spark_read_delta()`,
`spark_read_image()`,
`spark_read_json()`,
`spark_read_libsvm()`,
`spark_read_orc()`,
`spark_read_parquet()`,
`spark_read_source()`,
`spark_read_table()`,
`spark_read_text()`,
`spark_read()`,
`spark_save_table()`,
`spark_write_avro()`,
`spark_write_csv()`,
`spark_write_delta()`,
`spark_write_jdbc()`,
`spark_write_json()`,
`spark_write_orc()`,
`spark_write_parquet()`,
`spark_write_source()`,
`spark_write_table()`,
`spark_write_text()`



