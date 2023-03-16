# gf_lpa


Label propagation algorithm (LPA)




## Description

Run static Label Propagation for detecting communities in networks. Each node in the
  network is initially assigned to its own community. At every iteration, nodes send
  their community affiliation to all neighbors and update their state to the mode
  community affiliation of incoming messages. LPA is a standard community detection
   algorithm for graphs. It is very inexpensive
  computationally, although (1) convergence is not guaranteed and (2) one can
  end up with trivial solutions (all nodes are identified into a single community).





## Usage
```r
gf_lpa(x, max_iter, ...)
```




## Arguments


Argument      |Description
------------- |----------------
x | An object coercable to a GraphFrame (typically, a ``gf_graphframe``).
max_iter | Maximum number of iterations.
... | Optional arguments, currently not used.






## Examples

```r

g <- gf_friends(sc)
gf_lpa(g, max_iter = 5)

```



