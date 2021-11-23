# `sdf_rexp`

Generate random samples from an exponential distribution


## Description

Generator method for creating a single-column Spark dataframes comprised of
 i.i.d. samples from an exponential distribution.


## Usage

```r
sdf_rexp(sc, n, rate = 1, num_partitions = NULL, seed = NULL, output_col = "x")
```


## Arguments

Argument      |Description
------------- |----------------
`sc`     |     A Spark connection.
`n`     |     Sample Size (default: 1000).
`rate`     |     Rate of the exponential distribution (default: 1). The exponential distribution with rate lambda has mean 1 / lambda and density f(x) = lambda e ^ - lambda x .
`num_partitions`     |     Number of partitions in the resulting Spark dataframe (default: default parallelism of the Spark cluster).
`seed`     |     Random seed (default: a random long integer).
`output_col`     |     Name of the output column containing sample values (default: "x").


## Seealso

Other Spark statistical routines:
 [`sdf_rbeta`](#sdfrbeta) ,
 [`sdf_rbinom`](#sdfrbinom) ,
 [`sdf_rcauchy`](#sdfrcauchy) ,
 [`sdf_rchisq`](#sdfrchisq) ,
 [`sdf_rgamma`](#sdfrgamma) ,
 [`sdf_rgeom`](#sdfrgeom) ,
 [`sdf_rhyper`](#sdfrhyper) ,
 [`sdf_rlnorm`](#sdfrlnorm) ,
 [`sdf_rnorm`](#sdfrnorm) ,
 [`sdf_rpois`](#sdfrpois) ,
 [`sdf_rt`](#sdfrt) ,
 [`sdf_runif`](#sdfrunif) ,
 [`sdf_rweibull`](#sdfrweibull)


