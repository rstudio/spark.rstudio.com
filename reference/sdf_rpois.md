# `sdf_rpois`

Generate random samples from a Poisson distribution


## Description

Generator method for creating a single-column Spark dataframes comprised of
 i.i.d. samples from a Poisson distribution.


## Usage

```r
sdf_rpois(sc, n, lambda, num_partitions = NULL, seed = NULL, output_col = "x")
```


## Arguments

Argument      |Description
------------- |----------------
`sc`     |     A Spark connection.
`n`     |     Sample Size (default: 1000).
`lambda`     |     Mean, or lambda, of the Poisson distribution.
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
 [`sdf_rt`](#sdfrt) ,
 [`sdf_runif`](#sdfrunif) ,
 [`sdf_rweibull`](#sdfrweibull)


