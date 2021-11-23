# `sdf_debug_string`

Debug Info for Spark DataFrame


## Description

Prints plan of execution to generate `x` . This plan will, among other things, show the
 number of partitions in parenthesis at the far left and indicate stages using indentation.


## Usage

```r
sdf_debug_string(x, print = TRUE)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     An list() object wrapping, or containing, a Spark DataFrame.
`print`     |     Print debug information?


