# gf_pagerank


PageRank




## Description

PageRank





## Usage
```r
gf_pagerank(x, tol = NULL, reset_probability = 0.15, max_iter = NULL,
  source_id = NULL, ...)
```




## Arguments


Argument      |Description
------------- |----------------
x | An object coercable to a GraphFrame (typically, a
``gf_graphframe``).
tol | Tolerance.
reset_probability | Reset probability.
max_iter | Maximum number of iterations.
source_id | (Optional) Source vertex for a personalized pagerank.
... | Optional arguments, currently not used.






## Examples

```r

g <- gf_friends(sc)
gf_pagerank(g, reset_probability = 0.15, tol = 0.01)

```




