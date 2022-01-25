# sdf_rcauchy


Generate random samples from a Cauchy distribution




## Description

Generator method for creating a single-column Spark dataframes comprised of
i.i.d. samples from a Cauchy distribution.





## Usage
```r
sdf_rcauchy(
  sc,
  n,
  location = 0,
  scale = 1,
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
location | Location parameter of the distribution.
scale | Scale parameter of the distribution.
num_partitions | Number of partitions in the resulting Spark dataframe
(default: default parallelism of the Spark cluster).
seed | Random seed (default: a random long integer).
output_col | Name of the output column containing sample values (default: "x").







## See Also

Other Spark statistical routines: 
`sdf_rbeta()`,
`sdf_rbinom()`,
`sdf_rchisq()`,
`sdf_rexp()`,
`sdf_rgamma()`,
`sdf_rgeom()`,
`sdf_rhyper()`,
`sdf_rlnorm()`,
`sdf_rnorm()`,
`sdf_rpois()`,
`sdf_rt()`,
`sdf_runif()`,
`sdf_rweibull()`


