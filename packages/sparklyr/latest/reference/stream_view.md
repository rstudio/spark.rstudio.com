# stream_view


View Stream




## Description

Opens a Shiny gadget to visualize the given stream.





## Usage
```r
stream_view(stream, ...)
```




## Arguments


Argument      |Description
------------- |----------------
stream | The stream to visualize.
... | Additional optional arguments.






## Examples

```r

library(sparklyr)
sc <- spark_connect(master = "local")

dir.create("iris-in")
write.csv(iris, "iris-in/iris.csv", row.names = FALSE)

stream_read_csv(sc, "iris-in/") %>%
  stream_write_csv("iris-out/") %>%
  stream_view() %>%
  stream_stop()

```



