# `spark_apply_bundle`

Create Bundle for Spark Apply


## Description

Creates a bundle of packages for `spark_apply()` .


## Usage

```r
spark_apply_bundle(packages = TRUE, base_path = getwd(), session_id = NULL)
```


## Arguments

Argument      |Description
------------- |----------------
`packages`     |     List of packages to pack or `TRUE` to pack all.
`base_path`     |     Base path used to store the resulting bundle.
`session_id`     |     An optional ID string to include in the bundle file name to allow the bundle to be session-specific


