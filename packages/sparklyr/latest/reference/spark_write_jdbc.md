# spark_write_jdbc


Writes a Spark DataFrame into a JDBC table




## Description

Writes a Spark DataFrame into a JDBC table.





## Usage
```r
spark_write_jdbc(
  x,
  name,
  mode = NULL,
  options = list(),
  partition_by = NULL,
  ...
)
```




## Arguments


Argument      |Description
------------- |----------------
x | A Spark DataFrame or dplyr operation
name | The name to assign to the newly generated table.
mode | A ``character`` element. Specifies the behavior when data or   table already exists. Supported values include: 'error', 'append', 'overwrite' and   ignore. Notice that 'overwrite' will also change the column structure.    For more details see also https://spark.apache.org/docs/latest/sql-programming-guide.html#save-modes   for your version of Spark.
options | A list of strings with additional options.
partition_by | A ``character`` vector. Partitions the output by the given columns on the file system.
... | Optional arguments; currently unused.






## Examples

```r

sc <- spark_connect(
  master = "local",
  config = list(
    `sparklyr.shell.driver-class-path` = "/usr/share/java/mysql-connector-java-8.0.25.jar"
  )
)
spark_write_jdbc(
  sdf_len(sc, 10),
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
`spark_read_jdbc()`,
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
`spark_write_json()`,
`spark_write_orc()`,
`spark_write_parquet()`,
`spark_write_source()`,
`spark_write_table()`,
`spark_write_text()`



