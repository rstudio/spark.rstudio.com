# ft_lsh_utils


Utility functions for LSH models




## Description

Utility functions for LSH models





## Usage
```r
ml_approx_nearest_neighbors(
  model,
  dataset,
  key,
  num_nearest_neighbors,
  dist_col = "distCol"
)

ml_approx_similarity_join(
  model,
  dataset_a,
  dataset_b,
  threshold,
  dist_col = "distCol"
)
```




## Arguments


Argument      |Description
------------- |----------------
model | A fitted LSH model, returned by either ``ft_minhash_lsh()`` or ``ft_bucketed_random_projection_lsh()``.
dataset | The dataset to search for nearest neighbors of the key.
key | Feature vector representing the item to search for.
num_nearest_neighbors | The maximum number of nearest neighbors.
dist_col | Output column for storing the distance between each result row and the key.
dataset_a | One of the datasets to join.
dataset_b | Another dataset to join.
threshold | The threshold for the distance of row pairs.





