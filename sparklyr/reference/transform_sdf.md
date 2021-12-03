# transform_sdf


transform a subset of column(s) in a Spark Dataframe




## Description

transform a subset of column(s) in a Spark Dataframe





## Usage
```r
transform_sdf(x, cols, fn)
```




## Arguments


Argument      |Description
------------- |----------------
x | An object coercible to a Spark DataFrame
cols | Subset of columns to apply transformation to
fn | Transformation function taking column name as the 1st parameter, the
corresponding ``org.apache.spark.sql.Column`` object as the 2nd parameter,
and returning a transformed ``org.apache.spark.sql.Column`` object






