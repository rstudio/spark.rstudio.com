# gf_star


Generate a star graph




## Description

Returns a star graph with Long ID type, consisting of a central element
   indexed 0 (the root) and the n other leaf vertices 1, 2, ..., n.





## Usage
```r
gf_star(sc, n)
```




## Arguments


Argument      |Description
------------- |----------------
sc | A Spark connection.
n | The number of leaves.






## Examples

```r

gf_star(sc, 5)

```




