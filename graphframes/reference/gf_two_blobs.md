# gf_two_blobs


Generate two blobs




## Description

Two densely connected blobs (vertices 0->n-1 and n->2n-1)
  connected by a single edge (0->n).





## Usage
```r
gf_two_blobs(sc, blob_size)
```




## Arguments


Argument      |Description
------------- |----------------
sc | A Spark connection.
blob_size | The size of each blob.






## Examples

```r

gf_two_blobs(sc, 3)

```




