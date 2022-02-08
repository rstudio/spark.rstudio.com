
<!-- README.md is generated from README.Rmd. Please edit that file -->

# sparktf

<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/rstudio/sparktf.svg?branch=master)](https://travis-ci.org/rstudio/sparktf)
<!-- badges: end -->

## Overview

**sparktf** is a [sparklyr](https://spark.rstudio.com/) extension that
allows writing of Spark `DataFrame`s to `TFRecord`, the recommended
format for persisting data to be used in training with TensorFlow.

## Installation

You can install the development version of sparktf from GitHub with:

``` r
devtools::install_github("rstudio/sparktf")
```

## Example

We first attach the required packages and establish a Spark connection.

``` r
library(sparktf)
library(sparklyr)
library(keras)
use_implementation("tensorflow")
library(tensorflow)
tfe_enable_eager_execution()
library(tfdatasets)

sc <- spark_connect(master = "local")
```

Copied a sample dataset to Spark then write it to disk via
`spark_write_tfrecord()`.

``` r
data_path <- file.path(tempdir(), "iris")
iris_tbl <- sdf_copy_to(sc, iris)

iris_tbl %>%
  ft_string_indexer_model(
    "Species", "label",
    labels = c("setosa", "versicolor", "virginica")
  ) %>%
  spark_write_tfrecord(
    path = data_path,
    write_locality = "local"
  )
```

We now read the saved `TFRecord` file and parse the contents to create a
dataset object. For details, refer to the [package website for
tfdatasets](https://tensorflow.rstudio.com/tools/tfdatasets/articles/introduction.html).

``` r
dataset <- tfrecord_dataset(list.files(data_path, full.names = TRUE)) %>%
  dataset_map(function(example_proto) {
    features <- list(
      label = tf$FixedLenFeature(shape(), tf$float32),
      Sepal_Length = tf$FixedLenFeature(shape(), tf$float32),
      Sepal_Width = tf$FixedLenFeature(shape(), tf$float32),
      Petal_Length = tf$FixedLenFeature(shape(), tf$float32),
      Petal_Width = tf$FixedLenFeature(shape(), tf$float32)
    )

    features <- tf$parse_single_example(example_proto, features)
    x <- list(
      features$Sepal_Length, features$Sepal_Width,
      features$Petal_Length, features$Petal_Width
      )
    y <- tf$one_hot(tf$cast(features$label, tf$int32), 3L)
    list(x, y)
  }) %>%
  dataset_shuffle(150) %>%
  dataset_batch(16)
```

Now, we can define a Keras model using the [keras
package](https://keras.rstudio.com/) and fit it by feeding the `dataset`
object defined above.

``` r
model <- keras_model_sequential() %>%
  layer_dense(32, activation = "relu", input_shape = 4) %>%
  layer_dense(3, activation = "softmax")

model %>%
  compile(loss = "categorical_crossentropy", optimizer = tf$train$AdamOptimizer())

history <- model %>%
  fit(dataset, epochs = 100, verbose = 0)
```

Finally, we can use the trained model to make some predictions.

``` r
new_data <- tf$constant(c(4.9, 3.2, 1.4, 0.2), shape = c(1, 4))
model(new_data)
#> tf.Tensor([[0.76382965 0.19407341 0.04209692]], shape=(1, 3), dtype=float32)
```
