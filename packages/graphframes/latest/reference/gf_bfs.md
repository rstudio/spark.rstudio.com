# gf_bfs


Breadth-first search (BFS)




## Description

Breadth-first search (BFS)





## Usage
```r
gf_bfs(x, from_expr, to_expr, max_path_length = 10, edge_filter = NULL,
  ...)
```




## Arguments


Argument      |Description
------------- |----------------
x | An object coercable to a GraphFrame (typically, a ``gf_graphframe``).
from_expr | Spark SQL expression specifying valid starting vertices for the BFS.
to_expr | Spark SQL expression specifying valid target vertices for the BFS.
max_path_length | Limit on the length of paths.
edge_filter | Spark SQL expression specifying edges which may be used in the search.
... | Optional arguments, currently not used.






## Examples

```r

g <- gf_friends(sc)
gf_bfs(g, from_expr = "name = 'Esther'", to_expr = "age < 32")

```




