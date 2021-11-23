# `ml_chisquare_test`

Chi-square hypothesis testing for categorical data.


## Description

Conduct Pearson's independence test for every feature against the
 label. For each feature, the (feature, label) pairs are converted
 into a contingency matrix for which the Chi-squared statistic is
 computed. All label and feature values must be categorical.


## Usage

```r
ml_chisquare_test(x, features, label)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     A `tbl_spark` .
`features`     |     The name(s) of the feature columns. This can also be the name of a single vector column created using `ft_vector_assembler()` .
`label`     |     The name of the label column.


## Value

A data frame with one row for each (feature, label) pair with p-values,
 degrees of freedom, and test statistics.


## Examples

```r
sc <- spark_connect(master = "local")
iris_tbl <- sdf_copy_to(sc, iris, name = "iris_tbl", overwrite = TRUE)

features <- c("Petal_Width", "Petal_Length", "Sepal_Length", "Sepal_Width")

ml_chisquare_test(iris_tbl, features = features, label = "Species")
```


