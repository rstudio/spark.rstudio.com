# sdf_rt


Generate random samples from a t-distribution




## Description

Generator method for creating a single-column Spark dataframes comprised of
i.i.d. samples from a t-distribution.





## Usage
```r
sdf_rt(sc, n, df, num_partitions = NULL, seed = NULL, output_col = "x")
```




## Arguments


Argument      |Description
------------- |----------------
sc | A Spark connection.
n | Sample Size (default: 1000).
df | Degrees of freedom (> 0, maybe non-integer).
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
`sdf_rgamma()`,
`sdf_rgeom()`,
`sdf_rhyper()`,
`sdf_rlnorm()`,
`sdf_rnorm()`,
`sdf_rpois()`,
`sdf_runif()`,
`sdf_rweibull()`


