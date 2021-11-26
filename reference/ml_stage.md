# ml_stage


Spark ML -- Pipeline stage extraction




## Description

Extraction of stages from a Pipeline or PipelineModel object.





## Usage
```r
ml_stage(x, stage)

ml_stages(x, stages = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
x | A ``ml_pipeline`` or a ``ml_pipeline_model`` object
stage | The UID of a stage in the pipeline.
stages | The UIDs of stages in the pipeline as a character vector.





## Value

For ``ml_stage()``: The stage specified.

For ``ml_stages()``: A list of stages. If ``stages`` is not set, the function returns all stages of the pipeline in a list.





