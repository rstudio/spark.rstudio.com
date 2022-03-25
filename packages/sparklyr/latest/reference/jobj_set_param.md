# jobj_set_param


Parameter Setting for JVM Objects




## Description

Sets a parameter value for a pipeline stage object.





## Usage
```r
jobj_set_param(jobj, setter, value, min_version = NULL, default = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
jobj | A pipeline stage jobj.
setter | The name of the setter method as a string.
value | The value to be set.
min_version | The minimum required Spark version for this parameter to be valid.
default | The default value of the parameter, to be used together with `min_version`. An error is thrown if the user's Spark version is older than `min_version` and `value` differs from `default`.






