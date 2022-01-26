# ml_write_bundle


Export a Spark pipeline for serving




## Description

This functions serializes a Spark pipeline model into an MLeap bundle.





## Usage
```r
ml_write_bundle(x, dataset, path, overwrite = FALSE)
```




## Arguments


Argument      |Description
------------- |----------------
x | A Spark pipeline model object.
dataset | A Spark DataFrame with the schema of the transformed DataFrame.
path | Where to save the bundle.
overwrite | Whether to overwrite an existing file, defaults to ``FALSE``.






## Examples

```r

library(sparklyr)
sc <- spark_connect(master = "local")
mtcars_tbl <- sdf_copy_to(sc, mtcars, overwrite = TRUE)
pipeline <- ml_pipeline(sc) %>%
  ft_binarizer("hp", "big_hp", threshold = 100) %>%
  ft_vector_assembler(c("big_hp", "wt", "qsec"), "features") %>%
  ml_gbt_regressor(label_col = "mpg")
pipeline_model <- ml_fit(pipeline, mtcars_tbl)
model_path <- file.path(tempdir(), "mtcars_model.zip")
ml_write_bundle(pipeline_model, 
                ml_transform(pipeline_model, mtcars_tbl),
                model_path,
                overwrite = TRUE)

```





