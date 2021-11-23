# `join.tbl_spark`

Join Spark tbls.


## Description

These functions are wrappers around their `dplyr` equivalents that set
 Spark SQL-compliant values for the `suffix` argument by replacing dots (`.`)
 with underscores (`_`). See [join] for a description of the general purpose
 of the functions.


## Usage

```r
list(list("inner_join"), list("tbl_spark"))(
  x,
  y,
  by = NULL,
  copy = FALSE,
  suffix = c("_x", "_y"),
  auto_index = FALSE,
  ...,
  sql_on = NULL
)
list(list("left_join"), list("tbl_spark"))(
  x,
  y,
  by = NULL,
  copy = FALSE,
  suffix = c("_x", "_y"),
  auto_index = FALSE,
  ...,
  sql_on = NULL
)
list(list("right_join"), list("tbl_spark"))(
  x,
  y,
  by = NULL,
  copy = FALSE,
  suffix = c("_x", "_y"),
  auto_index = FALSE,
  ...,
  sql_on = NULL
)
list(list("full_join"), list("tbl_spark"))(
  x,
  y,
  by = NULL,
  copy = FALSE,
  suffix = c("_x", "_y"),
  auto_index = FALSE,
  ...,
  sql_on = NULL
)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     A pair of lazy data frames backed by database queries.
`y`     |     A pair of lazy data frames backed by database queries.
`by`     |     A character vector of variables to join by.  If `NULL` , the default, *_join() will perform a natural join, using all variables in common across `x` and `y` . A message lists the variables so that you can check they're correct; suppress the message by supplying `by` explicitly.  To join by different variables on `x` and `y` , use a named vector. For example, `by = c("a" = "b")` will match `x$a` to `y$b` .  To join by multiple variables, use a vector with length > 1. For example, `by = c("a", "b")` will match `x$a` to `y$a` and `x$b` to `y$b` . Use a named vector to match different variables in `x` and `y` . For example, `by = c("a" = "b", "c" = "d")` will match `x$a` to `y$b` and `x$c` to `y$d` .  To perform a cross-join, generating all combinations of `x` and `y` , use `by = character()` .
`copy`     |     If `x` and `y` are not from the same data source, and `copy` is `TRUE` , then `y` will be copied into a temporary table in same database as `x` . *_join() will automatically run `ANALYZE` on the created table in the hope that this will make you queries as efficient as possible by giving more data to the query planner.  This allows you to join tables across srcs, but it's potentially expensive operation so you must opt into it.
`suffix`     |     If there are non-joined duplicate variables in `x` and `y` , these suffixes will be added to the output to disambiguate them. Should be a character vector of length 2.
`auto_index`     |     if `copy` is `TRUE` , automatically create indices for the variables in `by` . This may speed up the join if there are matching indexes in `x` .
`...`     |     Other parameters passed onto methods.
`sql_on`     |     A custom join predicate as an SQL expression. Usually joins use column equality, but you can perform more complex queries by supply `sql_on` which should be a SQL expression that uses `LHS` and `RHS` aliases to refer to the left-hand side or right-hand side of the join respectively.


