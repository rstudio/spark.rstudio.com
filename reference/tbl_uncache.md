# `tbl_uncache`

Uncache a Spark Table


## Description

Force a Spark table with name `name` to be unloaded from memory.


## Usage

```r
tbl_uncache(sc, name)
```


## Arguments

Argument      |Description
------------- |----------------
`sc`     |     A `spark_connection` .
`name`     |     The table name.


