# `sdf_runif`

Generate random samples from the uniform distribution U(0, 1).


## Description

Generator method for creating a single-column Spark dataframes comprised of
 i.i.d. samples from the uniform distribution U(0, 1).


## Usage

```r
sdf_runif(
  sc,
  n,
  min = 0,
  max = 1,
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
`min`     |     The lower limit of the distribution.
`max`     |     The upper limit of the distribution.
`num_partitions`     |     Number of partitions in the resulting Spark dataframe (default: default parallelism of the Spark cluster).
`seed`     |     Random seed (default: a random long integer).
`output_col`     |     Name of the output column containing sample values (default: "x").


## Seealso

Other Spark statistical routines:
 [`sdf_rbeta`](#sdfrbeta) ,
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
 [`sdf_rweibull`](#sdfrweibull)


