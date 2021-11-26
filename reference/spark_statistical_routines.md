# spark_statistical_routines


Generate random samples from some distribution




## Description

Generator methods for creating single-column Spark dataframes comprised of
i.i.d. samples from some distribution.






## Arguments


Argument      |Description
------------- |----------------
sc | A Spark connection.
n | Sample Size (default: 1000).
num_partitions | Number of partitions in the resulting Spark dataframe
(default: default parallelism of the Spark cluster).
seed | Random seed (default: a random long integer).
output_col | Name of the output column containing sample values (default: "x").






