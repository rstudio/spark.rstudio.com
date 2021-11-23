# `stream_find`

Find Stream


## Description

Finds and returns a stream based on the stream's identifier.


## Usage

```r
stream_find(sc, id)
```


## Arguments

Argument      |Description
------------- |----------------
`sc`     |     The associated Spark connection.
`id`     |     The stream identifier to find.


## Examples

```r
sc <- spark_connect(master = "local")
sdf_len(sc, 10) %>%
spark_write_parquet(path = "parquet-in")

stream <- stream_read_parquet(sc, "parquet-in") %>%
stream_write_parquet("parquet-out")

stream_id <- stream_id(stream)
stream_find(sc, stream_id)
```


