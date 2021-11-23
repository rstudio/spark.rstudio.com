# `spark_compilation_spec`

Define a Spark Compilation Specification


## Description

For use with [`compile_package_jars`](#compilepackagejars) . The Spark compilation
 specification is used when compiling Spark extension Java Archives, and
 defines which versions of Spark, as well as which versions of Scala, should
 be used for compilation.


## Usage

```r
spark_compilation_spec(
  spark_version = NULL,
  spark_home = NULL,
  scalac_path = NULL,
  scala_filter = NULL,
  jar_name = NULL,
  jar_path = NULL,
  jar_dep = NULL,
  embedded_srcs = "embedded_sources.R"
)
```


## Arguments

Argument      |Description
------------- |----------------
`spark_version`     |     The Spark version to build against. This can be left unset if the path to a suitable Spark home is supplied.
`spark_home`     |     The path to a Spark home installation. This can be left unset if `spark_version` is supplied; in such a case, `sparklyr` will attempt to discover the associated Spark installation using [`spark_home_dir`](#sparkhomedir) .
`scalac_path`     |     The path to the `scalac` compiler to be used during compilation of your Spark extension. Note that you should ensure the version of `scalac` selected matches the version of `scalac` used with the version of Spark you are compiling against.
`scala_filter`     |     An optional list() function that can be used to filter which `scala` files are used during compilation. This can be useful if you have auxiliary files that should only be included with certain versions of Spark.
`jar_name`     |     The name to be assigned to the generated `jar` .
`jar_path`     |     The path to the `jar` tool to be used during compilation of your Spark extension.
`jar_dep`     |     An optional list of additional `jar` dependencies.
`embedded_srcs`     |     Embedded source file(s) under `<R package root>/java` to be included in the root of the resulting jar file as resources


## Details

Most Spark extensions won't need to define their own compilation specification,
 and can instead rely on the default behavior of `compile_package_jars` .


