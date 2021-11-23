# `livy_config`

Create a Spark Configuration for Livy


## Description

Create a Spark Configuration for Livy


## Usage

```r
livy_config(
  config = spark_config(),
  username = NULL,
  password = NULL,
  negotiate = FALSE,
  custom_headers = list(`X-Requested-By` = "sparklyr"),
  proxy = NULL,
  curl_opts = NULL,
  ...
)
```


## Arguments

Argument      |Description
------------- |----------------
`config`     |     Optional base configuration
`username`     |     The username to use in the Authorization header
`password`     |     The password to use in the Authorization header
`negotiate`     |     Whether to use gssnegotiate method or not
`custom_headers`     |     List of custom headers to append to http requests. Defaults to `list("X-Requested-By" = "sparklyr")` .
`proxy`     |     Either NULL or a proxy specified by httr::use_proxy(). Defaults to NULL.
`curl_opts`     |     List of CURL options (e.g., verbose, connecttimeout, dns_cache_timeout, etc, see httr::httr_options() for a list of valid options) -- NOTE: these configurations are for libcurl only and separate from HTTP headers or Livy session parameters.
`...`     |     additional Livy session parameters


## Details

Extends a Spark `spark_config()` configuration with settings
 for Livy. For instance, `username` and `password` 
 define the basic authentication settings for a Livy session.
 
 The default value of `"custom_headers"` is set to `list("X-Requested-By" = "sparklyr")` 
 in order to facilitate connection to Livy servers with CSRF protection enabled.
 
 Additional parameters for Livy sessions are:
 list("\n", "  ", list(list(list("proxy_user")), list("User to impersonate when starting the session")), "\n", "  ", list(list(list("jars")), list("jars to be used in this session")), "\n", "  ", list(list(list("py_files")), list("Python files to be used in this session")), "\n", "  ", list(list(list("files")), list("files to be used in this session")), "\n", "  ", list(list(list("driver_memory")), list("Amount of memory to use for the driver process")), "\n", "  ", list(list(list("driver_cores")), 
    list("Number of cores to use for the driver process")), "\n", "  ", list(list(list("executor_memory")), list("Amount of memory to use per executor process")), "\n", "  ", list(list(list("executor_cores")), list("Number of cores to use for each executor")), "\n", "  ", list(list(list("num_executors")), list("Number of executors to launch for this session")), "\n", "  ", list(list(list("archives")), list("Archives to be used in this session")), "\n", "  ", list(list(list("queue")), list("The name of the YARN queue to which submitted")), 
    "\n", "  ", list(list(list("name")), list("The name of this session")), "\n", "  ", list(list(list("heartbeat_timeout")), list("Timeout in seconds to which session be orphaned")), "\n", "  ", list(list(list("conf")), list("Spark configuration properties (Map of key=value)")), "\n") 
 
 Note that `queue` is supported only by version 0.4.0 of Livy or newer.
 If you are using the older one, specify queue via `config` (e.g.
 `config = spark_config(spark.yarn.queue = "my_queue")` ).


## Value

Named list with configuration data


