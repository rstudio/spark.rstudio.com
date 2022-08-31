# stream_watermark


Watermark Stream




## Description

Ensures a stream has a watermark defined, which is required for some
operations over streams.





## Usage
```r
stream_watermark(x, column = "timestamp", threshold = "10 minutes")
```




## Arguments


Argument      |Description
------------- |----------------
x | An object coercable to a Spark Streaming DataFrame.
column | The name of the column that contains the event time of the row, if the column is missing, a column with the current time will be added.
threshold | The minimum delay to wait to data to arrive late, defaults to ten minutes.





