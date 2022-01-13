# ml-constructors


Constructors for Pipeline Stages




## Description

Functions for developers writing extensions for Spark ML.





## Usage
```r
new_ml_transformer(jobj, ..., class = character())

new_ml_prediction_model(jobj, ..., class = character())

new_ml_classification_model(jobj, ..., class = character())

new_ml_probabilistic_classification_model(jobj, ..., class = character())

new_ml_clustering_model(jobj, ..., class = character())

new_ml_estimator(jobj, ..., class = character())

new_ml_predictor(jobj, ..., class = character())

new_ml_classifier(jobj, ..., class = character())

new_ml_probabilistic_classifier(jobj, ..., class = character())
```




## Arguments


Argument      |Description
------------- |----------------
jobj | Pointer to the pipeline stage object.
... | (Optional) additional attributes of the object.
class | Name of class.






