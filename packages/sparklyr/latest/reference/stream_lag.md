# stream_lag


Apply lag function to columns of a Spark Streaming DataFrame




## Description

Given a streaming Spark dataframe as input, this function will return another
streaming dataframe that contains all columns in the input and column(s) that
are shifted behind by the offset(s) specified in `...` (see example)





## Usage
```r
stream_lag(x, cols, thresholds = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
x | An object coercable to a Spark Streaming DataFrame.
cols | A list of expressions of the form <destination column> = <source column> ~ <offset> (e.g., `prev_value = value ~ 1` will create a new column `prev_value` containing all values from the source column `value` shifted behind by 1
thresholds | Optional named list of timestamp column(s) and corresponding time duration(s) for deterimining whether a previous record is sufficiently recent relative to the current record. If the any of the time difference(s) between the current and a previous record is greater than the maximal duration allowed, then the previous record is discarded and will not be part of the query result. The durations can be specified with numeric types (which will be interpreted as max difference allowed in number of milliseconds between 2 UNIX timestamps) or time duration strings such as "5s", "5sec", "5min", "5hour", etc. Any timestamp column in `x` that is not of timestamp of date Spark SQL types will be interepreted as number of milliseconds since the UNIX epoch.






## Examples

```r


library(sparklyr)

sc <- spark_connect(master = "local", version = "2.2.0")

streaming_path <- tempfile("days_df_")
days_df <- tibble::tibble(
  today = weekdays(as.Date(seq(7), origin = "1970-01-01"))
)
num_iters <- 7
stream_generate_test(
  df = days_df,
  path = streaming_path,
  distribution = rep(nrow(days_df), num_iters),
  iterations = num_iters
)

stream_read_csv(sc, streaming_path) %>%
  stream_lag(cols = c(yesterday = today ~ 1, two_days_ago = today ~ 2)) %>%
  collect() %>%
  print(n = 10L)

```





