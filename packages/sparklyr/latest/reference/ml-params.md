# ml-params


Spark ML -- ML Params




## Description

Helper methods for working with parameters for ML objects.





## Usage
```r
ml_is_set(x, param, ...)

ml_param_map(x, ...)

ml_param(x, param, allow_null = FALSE, ...)

ml_params(x, params = NULL, allow_null = FALSE, ...)
```




## Arguments


Argument      |Description
------------- |----------------
x | A Spark ML object, either a pipeline stage or an evaluator.
param | The parameter to extract or set.
... | Optional arguments; currently unused.
allow_null | Whether to allow ``NULL`` results when extracting parameters. If ``FALSE``, an error will be thrown if the specified parameter is not found. Defaults to ``FALSE``.
params | A vector of parameters to extract.





