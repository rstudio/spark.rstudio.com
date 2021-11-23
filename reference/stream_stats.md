# `stream_stats`

Stream Statistics


## Description

Collects streaming statistics, usually, to be used with `stream_render()` 
 to render streaming statistics.


## Usage

```r
stream_stats(stream, stats = list())
```


## Arguments

Argument      |Description
------------- |----------------
`stream`     |     The stream to collect statistics from.
`stats`     |     An optional stats object generated using `stream_stats()` .


## Value

A stats object containing streaming statistics that can be passed
 back to the `stats` parameter to continue aggregating streaming stats.


## Examples

```r
sc <- spark_connect(master = "local")
sdf_len(sc, 10) %>%
spark_write_parquet(path = "parquet-in")

stream <- stream_read_parquet(sc, "parquet-in") %>%
stream_write_parquet("parquet-out")

stream_stats(stream)
```


