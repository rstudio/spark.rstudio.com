# gf_chain


Chain graph




## Description

Returns a chain graph of the given size with Long ID type.
  The vertex IDs are 0, 1, ..., n-1, and the edges are (0, 1), (1, 2), ...., (n-2, n-1).





## Usage
```r
gf_chain(sc, n)
```




## Arguments


Argument      |Description
------------- |----------------
sc | A Spark connection.
n | Size of the graph to return.






## Examples

```r

gf_chain(sc, 5)

```



