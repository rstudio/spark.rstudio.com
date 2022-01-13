# ml_pipeline


Spark ML -- Pipelines




## Description

Create Spark ML Pipelines





## Usage
```r
ml_pipeline(x, ..., uid = random_string("pipeline_"))
```




## Arguments


Argument      |Description
------------- |----------------
x | Either a ``spark_connection`` or ``ml_pipeline_stage`` objects
... | ``ml_pipeline_stage`` objects.
uid | A character string used to uniquely identify the ML estimator.





## Value

When ``x`` is a ``spark_connection``, ``ml_pipeline()`` returns an empty pipeline object. When ``x`` is a ``ml_pipeline_stage``, ``ml_pipeline()`` returns an ``ml_pipeline`` with the stages set to ``x`` and any transformers or estimators given in ``...``.





