# [.tbl_spark


Subsetting operator for Spark dataframe




## Description

Susetting operator for Spark dataframe allowing a subset of column(s) to be
selected using syntaxes similar to those supported by R dataframes





## Usage

[tbl_spark(x, i)





## Arguments


Argument      |Description
------------- |----------------
x | The Spark dataframe
i | Expression specifying subset of column(s) to include or exclude
from the result (e.g., `["col1"]`, `[c("col1", "col2")]`, `[1:10]`, `[-1]`,
`[NULL]`, or `[]`)






## Examples


```r

library(sparklyr)
sc <- spark_connect(master = "spark://HOST:PORT")
example_sdf <- copy_to(sc, tibble::tibble(a = 1, b = 2))
example_sdf["a"] %>% print()

```





