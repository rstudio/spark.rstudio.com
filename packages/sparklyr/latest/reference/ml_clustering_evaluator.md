# ml_clustering_evaluator


Spark ML - Clustering Evaluator




## Description

Evaluator for clustering results. The metric computes the Silhouette measure using the squared
  Euclidean distance. The Silhouette is a measure for the validation of the consistency
   within clusters. It ranges between 1 and -1, where a value close to 1 means that the
    points in a cluster are close to the other points in the same cluster and far from the
    points of the other clusters.





## Usage
```r
ml_clustering_evaluator(
  x,
  features_col = "features",
  prediction_col = "prediction",
  metric_name = "silhouette",
  uid = random_string("clustering_evaluator_"),
  ...
)
```




## Arguments


Argument      |Description
------------- |----------------
x | A ``spark_connection`` object or a ``tbl_spark`` containing label and prediction columns. The latter should be the output of `sdf_predict`.
features_col | Name of features column.
prediction_col | Name of the prediction column.
metric_name | The performance metric. Currently supports "silhouette".
uid | A character string used to uniquely identify the ML estimator.
... | Optional arguments; currently unused.





## Value

The calculated performance metric





## Examples

```r

sc <- spark_connect(master = "local")
iris_tbl <- sdf_copy_to(sc, iris, name = "iris_tbl", overwrite = TRUE)

partitions <- iris_tbl %>%
  sdf_random_split(training = 0.7, test = 0.3, seed = 1111)

iris_training <- partitions$training
iris_test <- partitions$test

formula <- Species ~ .

# Train the models
kmeans_model <- ml_kmeans(iris_training, formula = formula)
b_kmeans_model <- ml_bisecting_kmeans(iris_training, formula = formula)
gmm_model <- ml_gaussian_mixture(iris_training, formula = formula)

# Predict
pred_kmeans <- ml_predict(kmeans_model, iris_test)
pred_b_kmeans <- ml_predict(b_kmeans_model, iris_test)
pred_gmm <- ml_predict(gmm_model, iris_test)

# Evaluate
ml_clustering_evaluator(pred_kmeans)
ml_clustering_evaluator(pred_b_kmeans)
ml_clustering_evaluator(pred_gmm)

```



