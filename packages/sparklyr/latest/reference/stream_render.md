# stream_render


Render Stream




## Description

Collects streaming statistics to render the stream as an 'htmlwidget'.





## Usage
```r
stream_render(stream = NULL, collect = 10, stats = NULL, ...)
```




## Arguments


Argument      |Description
------------- |----------------
stream | The stream to render
collect | The interval in seconds to collect data before rendering the
'htmlwidget'.
stats | Optional stream statistics collected using ``stream_stats()``,
when specified, ``stream`` should be omitted.
... | Additional optional arguments.






## Examples

```r

library(sparklyr)
sc <- spark_connect(master = "local")

dir.create("iris-in")
write.csv(iris, "iris-in/iris.csv", row.names = FALSE)

stream <- stream_read_csv(sc, "iris-in/") %>%
  stream_write_csv("iris-out/")

stream_render(stream)
stream_stop(stream)

```



