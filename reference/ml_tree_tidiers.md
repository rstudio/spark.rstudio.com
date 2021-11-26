# ml_tree_tidiers


Tidying methods for Spark ML tree models




## Description

These methods summarize the results of Spark ML models into tidy forms.





## Usage

tidyml_model_decision_tree_classification(x, ...)

tidyml_model_decision_tree_regression(x, ...)

augmentml_model_decision_tree_classification(x, newdata = NULL, ...)

augmentml_model_decision_tree_regression(x, newdata = NULL, ...)

glanceml_model_decision_tree_classification(x, ...)

glanceml_model_decision_tree_regression(x, ...)

tidyml_model_random_forest_classification(x, ...)

tidyml_model_random_forest_regression(x, ...)

augmentml_model_random_forest_classification(x, newdata = NULL, ...)

augmentml_model_random_forest_regression(x, newdata = NULL, ...)

glanceml_model_random_forest_classification(x, ...)

glanceml_model_random_forest_regression(x, ...)

tidyml_model_gbt_classification(x, ...)

tidyml_model_gbt_regression(x, ...)

augmentml_model_gbt_classification(x, newdata = NULL, ...)

augmentml_model_gbt_regression(x, newdata = NULL, ...)

glanceml_model_gbt_classification(x, ...)

glanceml_model_gbt_regression(x, ...)





## Arguments


Argument      |Description
------------- |----------------
x | a Spark ML model.
... | extra arguments (not used.)
newdata | a tbl_spark of new data to use for prediction.






