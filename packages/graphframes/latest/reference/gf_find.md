# gf_find


Motif finding: Searching the graph for structural patterns




## Description

Motif finding uses a simple Domain-Specific Language (DSL) for
 expressing structural queries. For example,
 gf_find(g, "(a)-[e]->(b); (b)-[e2]->(a)") will search for
 pairs of vertices a,b connected by edges in both directions.
 It will return a DataFrame of all such structures in the graph,
 with columns for each of the named elements (vertices or edges)
 in the motif. In this case, the returned columns will be in
 order of the pattern: "a, e, b, e2."





## Usage
```r
gf_find(x, pattern)
```




## Arguments


Argument      |Description
------------- |----------------
x | An object coercable to a GraphFrame (typically, a
``gf_graphframe``).
pattern | pattern specifying a motif to search for






## Examples

```r

gf_friends(sc) %>%
  gf_find("(a)-[e]->(b); (b)-[e2]->(a)")

```



