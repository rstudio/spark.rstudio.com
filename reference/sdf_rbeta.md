# `sdf_rbeta`

Generate random samples from a Beta distribution


## Description

Generator method for creating a single-column Spark dataframes comprised of
 i.i.d. samples from a Betal distribution.


## Usage

```r
sdf_rbeta(
  sc,
  n,
  shape1,
  shape2,
  num_partitions = NULL,
  seed = NULL,
  output_col = "x"
)
```


## Arguments

Argument      |Description
------------- |----------------
`sc`     |     A Spark connection.
`n`     |     Sample Size (default: 1000).
`shape1`     |     Non-negative parameter (alpha) of the Beta distribution.
`shape2`     |     Non-negative parameter (beta) of the Beta distribution.
`num_partitions`     |     Number of partitions in the resulting Spark dataframe (default: default parallelism of the Spark cluster).
`seed`     |     Random seed (default: a random long integer).
`output_col`     |     Name of the output column containing sample values (default: "x").


## Seealso

Other Spark statistical routines:
 [`sdf_rbinom`](#sdfrbinom) ,
 [`sdf_rcauchy`](#sdfrcauchy) ,
 [`sdf_rchisq`](#sdfrchisq) ,
 [`sdf_rexp`](#sdfrexp) ,
 [`sdf_rgamma`](#sdfrgamma) ,
 [`sdf_rgeom`](#sdfrgeom) ,
 [`sdf_rhyper`](#sdfrhyper) ,
 [`sdf_rlnorm`](#sdfrlnorm) ,
 [`sdf_rnorm`](#sdfrnorm) ,
 [`sdf_rpois`](#sdfrpois) ,
 [`sdf_rt`](#sdfrt) ,
 [`sdf_runif`](#sdfrunif) ,
 [`sdf_rweibull`](#sdfrweibull)


