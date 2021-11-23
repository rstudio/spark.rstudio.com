# `sdf_sql`

Spark DataFrame from SQL


## Description

Defines a Spark DataFrame from a SQL query, useful to create Spark DataFrames
 without collecting the results immediately.


## Usage

```r
sdf_sql(sc, sql)
```


## Arguments

Argument      |Description
------------- |----------------
`sc`     |     A `spark_connection` .
`sql`     |     a 'SQL' query used to generate a Spark DataFrame.


