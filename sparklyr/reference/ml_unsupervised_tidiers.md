# ml_unsupervised_tidiers


Tidying methods for Spark ML unsupervised models




## Description

These methods summarize the results of Spark ML models into tidy forms.





## Usage

tidyml_model_kmeans(x, ...)

augmentml_model_kmeans(x, newdata = NULL, ...)

glanceml_model_kmeans(x, ...)

tidyml_model_bisecting_kmeans(x, ...)

augmentml_model_bisecting_kmeans(x, newdata = NULL, ...)

glanceml_model_bisecting_kmeans(x, ...)

tidyml_model_gaussian_mixture(x, ...)

augmentml_model_gaussian_mixture(x, newdata = NULL, ...)

glanceml_model_gaussian_mixture(x, ...)





## Arguments


Argument      |Description
------------- |----------------
x | a Spark ML model.
... | extra arguments (not used.)
newdata | a tbl_spark of new data to use for prediction.






