# gf_friends


Graph of friends in a social network.




## Description

Graph of friends in a social network.





## Usage
```r
gf_friends(sc)
```




## Arguments


Argument      |Description
------------- |----------------
sc | A Spark connection.






## Examples

```r

library(sparklyr)
sc <- spark_connect(master = "local")
gf_friends(sc)

```




