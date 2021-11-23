# `spark_dependency`

Define a Spark dependency


## Description

Define a Spark dependency consisting of a set of custom JARs, Spark packages,
 and customized dbplyr SQL translation env.


## Usage

```r
spark_dependency(
  jars = NULL,
  packages = NULL,
  initializer = NULL,
  catalog = NULL,
  repositories = NULL,
  dbplyr_sql_variant = NULL,
  ...
)
```


## Arguments

Argument      |Description
------------- |----------------
`jars`     |     Character vector of full paths to JAR files.
`packages`     |     Character vector of Spark packages names.
`initializer`     |     Optional callback function called when initializing a connection.
`catalog`     |     Optional location where extension JAR files can be downloaded for Livy.
`repositories`     |     Character vector of Spark package repositories.
`dbplyr_sql_variant`     |     Customization of dbplyr SQL translation env. Must be a named list of the following form: list( scalar = list(scalar_fn1 = ..., scalar_fn2 = ..., <etc>), aggregate = list(agg_fn1 = ..., agg_fn2 = ..., <etc>), window = list(wnd_fn1 = ..., wnd_fn2 = ..., <etc>) ) See [sql_variant](#sqlvariant) for details.
`...`     |     Additional optional arguments.


## Value

An object of type `spark_dependency`


