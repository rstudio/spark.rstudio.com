# `ml-persistence`

Spark ML -- Model Persistence


## Description

Save/load Spark ML objects


## Usage

```r
ml_save(x, path, overwrite = FALSE, ...)
list(list("ml_save"), list("ml_model"))(
  x,
  path,
  overwrite = FALSE,
  type = c("pipeline_model", "pipeline"),
  ...
)
ml_load(sc, path)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     A ML object, which could be a `ml_pipeline_stage` or a `ml_model`
`path`     |     The path where the object is to be serialized/deserialized.
`overwrite`     |     Whether to overwrite the existing path, defaults to `FALSE` .
`...`     |     Optional arguments; currently unused.
`type`     |     Whether to save the pipeline model or the pipeline.
`sc`     |     A Spark connection.


## Value

`ml_save()` serializes a Spark object into a format that can be read back into `sparklyr` or by the Scala or PySpark APIs. When called on `ml_model` objects, i.e. those that were created via the `tbl_spark - formula` signature, the associated pipeline model is serialized. In other words, the saved model contains both the data processing ( `RFormulaModel` ) stage and the machine learning stage.
 
 `ml_load()` reads a saved Spark object into `sparklyr` . It calls the correct Scala `load` method based on parsing the saved metadata. Note that a `PipelineModel` object saved from a sparklyr `ml_model` via `ml_save()` will be read back in as an `ml_pipeline_model` , rather than the `ml_model` object.


