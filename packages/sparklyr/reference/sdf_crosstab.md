# sdf_crosstab


Cross Tabulation




## Description

Builds a contingency table at each combination of factor levels.





## Usage
```r
sdf_crosstab(x, col1, col2)
```




## Arguments


Argument      |Description
------------- |----------------
x | A Spark DataFrame
col1 | The name of the first column. Distinct items will make the first item of each row.
col2 | The name of the second column. Distinct items will make the column names of the DataFrame.





## Value

A DataFrame containing the contingency table.





