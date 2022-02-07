# gf_scc


Strongly connected components




## Description

Compute the strongly connected component (SCC) of each vertex and return a
  DataFrame with each vertex assigned to the SCC containing that vertex.





## Usage
```r
gf_scc(x, max_iter, ...)
```




## Arguments


Argument      |Description
------------- |----------------
x | An object coercable to a GraphFrame (typically, a
``gf_graphframe``).
max_iter | Maximum number of iterations.
... | Optional arguments, currently not used.






## Examples

```r

g <- gf_friends(sc)
gf_scc(g, max_iter = 10)

```



