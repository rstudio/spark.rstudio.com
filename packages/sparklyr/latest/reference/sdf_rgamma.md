# sdf_rgamma


Generate random samples from a Gamma distribution




## Description

Generator method for creating a single-column Spark dataframes comprised of
i.i.d. samples from a Gamma distribution.





## Usage
```r
sdf_rgamma(
  sc,
  n,
  shape,
  rate = 1,
  num_partitions = NULL,
  seed = NULL,
  output_col = "x"
)
```




## Arguments


Argument      |Description
------------- |----------------
sc | A Spark connection.
n | Sample Size (default: 1000).
shape | Shape parameter (greater than 0) for the Gamma distribution.
rate | Rate parameter (greater than 0) for the Gamma distribution (scale is 1/rate).
num_partitions | Number of partitions in the resulting Spark dataframe (default: default parallelism of the Spark cluster).
seed | Random seed (default: a random long integer).
output_col | Name of the output column containing sample values (default: "x").







## See Also

Other Spark statistical routines: 
`sdf_rbeta()`,
`sdf_rbinom()`,
`sdf_rcauchy()`,
`sdf_rchisq()`,
`sdf_rexp()`,
`sdf_rgeom()`,
`sdf_rhyper()`,
`sdf_rlnorm()`,
`sdf_rnorm()`,
`sdf_rpois()`,
`sdf_rt()`,
`sdf_runif()`,
`sdf_rweibull()`



