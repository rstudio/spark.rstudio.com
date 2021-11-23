# `livy_service_start`

Start Livy


## Description

Starts the livy service.
 
 Stops the running instances of the livy service.


## Usage

```r
livy_service_start(
  version = NULL,
  spark_version = NULL,
  stdout = "",
  stderr = "",
  ...
)
livy_service_stop()
```


## Arguments

Argument      |Description
------------- |----------------
`version`     |     The version of livy to use.
`spark_version`     |     The version of spark to connect to.
`stdout, stderr`     |     where output to 'stdout' or 'stderr' should be sent. Same options as `system2` .
`...`     |     Optional arguments; currently unused.


