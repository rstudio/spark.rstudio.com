# gf_grid_ising_model


Generate a grid Ising model with random parameters




## Description

Generate a grid Ising model with random parameters





## Usage
```r
gf_grid_ising_model(sc, n, v_std = 1, e_std = 1)
```




## Arguments


Argument      |Description
------------- |----------------
sc | A Spark connection.
n | Length of one side of the grid. The grid will be of size n x n.
v_std | Standard deviation of normal distribution used to generate vertex factors "a". Default of 1.0.
e_std | Standard deviation of normal distribution used to generate edge factors "b". Default of 1.0.




## Details

This method generates a grid Ising model with random parameters. Ising models
  are probabilistic graphical models over binary variables xi. Each binary
  variable xi corresponds to one vertex, and it may take values -1 or +1.
   The probability distribution P(X) (over all xi) is parameterized by
   vertex factors ai and edge factors bij:

   P(X) = (1/Z) * exp[ \sum_i a_i x_i + \sum_{ij} b_{ij} x_i x_j ]





## Value

GraphFrame. Vertices have columns "id" and "a". Edges have columns "src",
  "dst", and "b". Edges are directed, but they should be treated as undirected in
   any algorithms run on this model. Vertex IDs are of the form "i,j". E.g., vertex
   "1,3" is in the second row and fourth column of the grid.





## Examples

```r

gf_grid_ising_model(sc, 5)

```



