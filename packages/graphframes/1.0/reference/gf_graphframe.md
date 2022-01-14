# gf_graphframe


Create a new GraphFrame




## Description

Create a new GraphFrame





## Usage
```r
gf_graphframe(vertices = NULL, edges)
```




## Arguments


Argument      |Description
------------- |----------------
vertices | A ``tbl_spark`` representing vertices.
edges | A ``tbl_psark`` representing edges.






## Examples

```r

library(sparklyr)
sc <- spark_connect(master = "local", version = "2.1.0")
v_tbl <- sdf_copy_to(
  sc, data.frame(id = 1:3, name = LETTERS[1:3])
)
e_tbl <- sdf_copy_to(
  sc, data.frame(src = c(1, 2, 2), dst = c(2, 1, 3),
                 action = c("love", "hate", "follow"))
)
gf_graphframe(v_tbl, e_tbl)
gf_graphframe(edges = e_tbl)

```




