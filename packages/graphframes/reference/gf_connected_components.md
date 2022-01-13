# gf_connected_components


Connected components




## Description

Computes the connected component membership of each vertex and returns a DataFrame
   of vertex information with each vertex assigned a component ID.





## Usage
```r
gf_connected_components(x, broadcast_threshold = 1000000L,
  algorithm = c("graphframes", "graphx"), checkpoint_interval = 2L,
  ...)
```




## Arguments


Argument      |Description
------------- |----------------
x | An object coercable to a GraphFrame (typically, a
``gf_graphframe``).
broadcast_threshold | Broadcast threshold in propagating component assignments.
algorithm | One of 'graphframes' or 'graphx'.
checkpoint_interval | Checkpoint interval in terms of number of iterations.
... | Optional arguments, currently not used.






## Examples

```r

# checkpoint directory is required for gf_connected_components()
spark_set_checkpoint_dir(sc, tempdir())
g <- gf_friends(sc)
gf_connected_components(g)

```




