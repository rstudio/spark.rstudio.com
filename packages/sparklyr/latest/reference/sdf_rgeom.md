# sdf_rgeom


Generate random samples from a geometric distribution




## Description

Generator method for creating a single-column Spark dataframes comprised of
i.i.d. samples from a geometric distribution.





## Usage
```r
sdf_rgeom(sc, n, prob, num_partitions = NULL, seed = NULL, output_col = "x")
```




## Arguments


Argument      |Description
------------- |----------------
sc | A Spark connection.
n | Sample Size (default: 1000).
prob | Probability of success in each trial.
num_partitions | Number of partitions in the resulting Spark dataframe
(default: default parallelism of the Spark cluster).
seed | Random seed (default: a random long integer).
output_col | Name of the output column containing sample values (default: "x").







## See Also

Other Spark statistical routines: 
`sdf_rbeta()`,
`sdf_rbinom()`,
`sdf_rcauchy()`,
`sdf_rchisq()`,
`sdf_rexp()`,
`sdf_rgamma()`,
`sdf_rhyper()`,
`sdf_rlnorm()`,
`sdf_rnorm()`,
`sdf_rpois()`,
`sdf_rt()`,
`sdf_runif()`,
`sdf_rweibull()`



