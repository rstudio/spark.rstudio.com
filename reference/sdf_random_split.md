# `sdf_random_split`

Partition a Spark Dataframe


## Description

Partition a Spark DataFrame into multiple groups. This routine is useful
 for splitting a DataFrame into, for example, training and test datasets.


## Usage

```r
sdf_random_split(
  x,
  ...,
  weights = NULL,
  seed = sample(.Machine$integer.max, 1)
)
sdf_partition(x, ..., weights = NULL, seed = sample(.Machine$integer.max, 1))
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     An object coercable to a Spark DataFrame.
`...`     |     Named parameters, mapping table names to weights. The weights will be normalized such that they sum to 1.
`weights`     |     An alternate mechanism for supplying weights -- when specified, this takes precedence over the `...` arguments.
`seed`     |     Random seed to use for randomly partitioning the dataset. Set this if you want your partitioning to be reproducible on repeated runs.


## Details

The sampling weights define the probability that a particular observation
 will be assigned to a particular partition, not the resulting size of the
 partition. This implies that partitioning a DataFrame with, for example,
 
 `sdf_random_split(x, training = 0.5, test = 0.5)` 
 
 is not guaranteed to produce `training` and `test` partitions
 of equal size.


## Value

An list()  `list` of `tbl_spark` s.


## Seealso

Other Spark data frames:
 [`sdf_copy_to`](#sdfcopyto) ,
 [`sdf_distinct`](#sdfdistinct) ,
 [`sdf_register`](#sdfregister) ,
 [`sdf_sample`](#sdfsample) ,
 [`sdf_sort`](#sdfsort) ,
 [`sdf_weighted_sample`](#sdfweightedsample)


## Examples

```r
# randomly partition data into a 'training' and 'test'
# dataset, with 60% of the observations assigned to the
# 'training' dataset, and 40% assigned to the 'test' dataset
data(diamonds, package = "ggplot2")
diamonds_tbl <- copy_to(sc, diamonds, "diamonds")
partitions <- diamonds_tbl %>%
sdf_random_split(training = 0.6, test = 0.4)
print(partitions)

# alternate way of specifying weights
weights <- c(training = 0.6, test = 0.4)
diamonds_tbl %>% sdf_random_split(weights = weights)
```


