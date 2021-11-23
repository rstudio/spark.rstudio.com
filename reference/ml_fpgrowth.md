# `ml_fpgrowth`

Frequent Pattern Mining -- FPGrowth


## Description

A parallel FP-growth algorithm to mine frequent itemsets.


## Usage

```r
ml_fpgrowth(
  x,
  items_col = "items",
  min_confidence = 0.8,
  min_support = 0.3,
  prediction_col = "prediction",
  uid = random_string("fpgrowth_"),
  ...
)
ml_association_rules(model)
ml_freq_itemsets(model)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     A `spark_connection` , `ml_pipeline` , or a `tbl_spark` .
`items_col`     |     Items column name. Default: "items"
`min_confidence`     |     Minimal confidence for generating Association Rule. `min_confidence` will not affect the mining for frequent itemsets, but will affect the association rules generation. Default: 0.8
`min_support`     |     Minimal support level of the frequent pattern. [0.0, 1.0]. Any pattern that appears more than (min_support * size-of-the-dataset) times will be output in the frequent itemsets. Default: 0.3
`prediction_col`     |     Prediction column name.
`uid`     |     A character string used to uniquely identify the ML estimator.
`...`     |     Optional arguments; currently unused.
`model`     |     A fitted FPGrowth model returned by `ml_fpgrowth()`


