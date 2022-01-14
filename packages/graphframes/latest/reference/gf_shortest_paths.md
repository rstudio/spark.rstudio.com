# gf_shortest_paths


Shortest paths




## Description

Computes shortest paths from every vertex to the given set of landmark vertices.
  Note that this takes edge direction into account.





## Usage
```r
gf_shortest_paths(x, landmarks, ...)
```




## Arguments


Argument      |Description
------------- |----------------
x | An object coercable to a GraphFrame (typically, a
``gf_graphframe``).
landmarks | IDs of landmark vertices.
... | Optional arguments, currently not used.






## Examples

```r

g <- gf_friends(sc)
gf_shortest_paths(g, landmarks = c("a", "d"))

```




