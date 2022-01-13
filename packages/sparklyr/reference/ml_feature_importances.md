# ml_feature_importances


Spark ML - Feature Importance for Tree Models




## Description

Spark ML - Feature Importance for Tree Models





## Usage
```r
ml_feature_importances(model, ...)

ml_tree_feature_importance(model, ...)
```




## Arguments


Argument      |Description
------------- |----------------
model | A decision tree-based model.
... | Optional arguments; currently unused.





## Value

For ``ml_model``, a sorted data frame with feature labels and their relative importance.
  For ``ml_prediction_model``, a vector of relative importances.





