# sdf_pivot


Pivot a Spark DataFrame




## Description

Construct a pivot table over a Spark Dataframe, using a syntax similar to
that from ``reshape2::dcast``.





## Usage
```r
sdf_pivot(x, formula, fun.aggregate = "count")
```




## Arguments


Argument      |Description
------------- |----------------
x | A ``spark_connection``, ``ml_pipeline``, or a ``tbl_spark``.
formula | A two-sided  formula of the form ``x_1 + x_2 + ... ~ y_1``. The left-hand side of the formula indicates which variables are used for grouping, and the right-hand side indicates which variable is used for pivoting. Currently, only a single pivot column is supported.
fun.aggregate | How should the grouped dataset be aggregated? Can be a length-one character vector, giving the name of a Spark aggregation function to be called; a named  list mapping column names to an aggregation method, or an  function that is invoked on the grouped dataset.






## Examples

```r

library(sparklyr)
library(dplyr)

sc <- spark_connect(master = "local")
iris_tbl <- sdf_copy_to(sc, iris, name = "iris_tbl", overwrite = TRUE)

# aggregating by mean
iris_tbl %>%
  mutate(Petal_Width = ifelse(Petal_Width > 1.5, "High", "Low")) %>%
  sdf_pivot(Petal_Width ~ Species,
    fun.aggregate = list(Petal_Length = "mean")
  )

# aggregating all observations in a list
iris_tbl %>%
  mutate(Petal_Width = ifelse(Petal_Width > 1.5, "High", "Low")) %>%
  sdf_pivot(Petal_Width ~ Species,
    fun.aggregate = list(Petal_Length = "collect_list")
  )

```




