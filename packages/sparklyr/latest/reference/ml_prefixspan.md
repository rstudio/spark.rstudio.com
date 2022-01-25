# ml_prefixspan


Frequent Pattern Mining -- PrefixSpan




## Description

PrefixSpan algorithm for mining frequent itemsets.





## Usage
```r
ml_prefixspan(
  x,
  seq_col = "sequence",
  min_support = 0.1,
  max_pattern_length = 10,
  max_local_proj_db_size = 3.2e+07,
  uid = random_string("prefixspan_"),
  ...
)

ml_freq_seq_patterns(model)
```




## Arguments


Argument      |Description
------------- |----------------
x | A ``spark_connection``, ``ml_pipeline``, or a ``tbl_spark``.
seq_col | The name of the sequence column in dataset (default
“sequence”). Rows with nulls in this column are ignored.
min_support | The minimum support required to be considered a frequent
sequential pattern.
max_pattern_length | The maximum length of a frequent sequential
pattern. Any frequent pattern exceeding this length will not be included in
the results.
max_local_proj_db_size | The maximum number of items allowed in a
prefix-projected database before local iterative processing of the
projected database begins. This parameter should be tuned with respect to
the size of your executors.
uid | A character string used to uniquely identify the ML estimator.
... | Optional arguments; currently unused.
model | A Prefix Span model.






## Examples

```r

library(sparklyr)
sc <- spark_connect(master = "local", version = "2.4.0")

items_df <- tibble::tibble(
  seq = list(
    list(list(1, 2), list(3)),
    list(list(1), list(3, 2), list(1, 2)),
    list(list(1, 2), list(5)),
    list(list(6))
  )
)
items_sdf <- copy_to(sc, items_df, overwrite = TRUE)

prefix_span_model <- ml_prefixspan(
  sc,
  seq_col = "seq",
  min_support = 0.5,
  max_pattern_length = 5,
  max_local_proj_db_size = 32000000
)

frequent_items <- prefix_span_model$frequent_sequential_patterns(items_sdf) %>% collect()

```




