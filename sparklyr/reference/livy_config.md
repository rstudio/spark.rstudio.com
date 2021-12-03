# livy_config


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
config | Optional base configuration
username | The username to use in the Authorization header
password | The password to use in the Authorization header
negotiate | Whether to use gssnegotiate method or not
custom_headers | List of custom headers to append to http requests. Defaults to ``list("X-Requested-By" = "sparklyr")``.
proxy | Either NULL or a proxy specified by httr::use_proxy(). Defaults to NULL.
curl_opts | List of CURL options (e.g., verbose, connecttimeout, dns_cache_timeout, etc, see httr::httr_options() for a
list of valid options) -- NOTE: these configurations are for libcurl only and separate from HTTP headers or Livy session
parameters.
... | additional Livy session parameters




## Details

Extends a Spark ``spark_config()`` configuration with settings
for Livy. For instance, ``username`` and ``password``
define the basic authentication settings for a Livy session.

The default value of ``"custom_headers"`` is set to ``list("X-Requested-By" = "sparklyr")``
in order to facilitate connection to Livy servers with CSRF protection enabled.

Additional parameters for Livy sessions are:

  
* 
  
* 
  
* 
  
* 
  
* 
  
* 
  
* 
  
* 
  
* 
  
* 
  
* 
  
* 
  
* 
  
* 


Note that ``queue`` is supported only by version 0.4.0 of Livy or newer.
If you are using the older one, specify queue via ``config`` (e.g.
``config = spark_config(spark.yarn.queue = "my_queue")``).





## Value

Named list with configuration data





