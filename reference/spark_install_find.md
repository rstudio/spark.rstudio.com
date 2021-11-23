# `spark_install_find`

Find a given Spark installation by version.


## Description

Find a given Spark installation by version.


## Usage

```r
spark_install_find(
  version = NULL,
  hadoop_version = NULL,
  installed_only = TRUE,
  latest = FALSE,
  hint = FALSE
)
```


## Arguments

Argument      |Description
------------- |----------------
`version`     |     Version of Spark to install. See `spark_available_versions` for a list of supported versions
`hadoop_version`     |     Version of Hadoop to install. See `spark_available_versions` for a list of supported versions
`installed_only`     |     Search only the locally installed versions?
`latest`     |     Check for latest version?
`hint`     |     On failure should the installation code be provided?


