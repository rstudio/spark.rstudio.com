# reactiveSpark


Reactive spark reader




## Description

Given a spark object, returns a reactive data source for the contents
of the spark object. This function is most useful to read Spark streams.





## Usage
```r
reactiveSpark(x, intervalMillis = 1000, session = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
x | An object coercable to a Spark DataFrame.
intervalMillis | Approximate number of milliseconds to wait to retrieve updated data frame. This can be a numeric value, or a function that returns a numeric value.
session | The user session to associate this file reader with, or NULL if none. If non-null, the reader will automatically stop when the session ends.






