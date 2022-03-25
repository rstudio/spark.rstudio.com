# spark_default_compilation_spec


Default Compilation Specification for Spark Extensions




## Description

This is the default compilation specification used for
Spark extensions, when used with `compile_package_jars`.





## Usage
```r
spark_default_compilation_spec(
  pkg = infer_active_package_name(),
  locations = NULL
)
```




## Arguments


Argument      |Description
------------- |----------------
pkg | The package containing Spark extensions to be compiled.
locations | Additional locations to scan. By default, the directories ``/opt/scala`` and ``/usr/local/scala`` will be scanned.






