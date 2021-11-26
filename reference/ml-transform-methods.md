# ml-transform-methods


Spark ML -- Transform, fit, and predict methods (ml_ interface)




## Description

Methods for transformation, fit, and prediction. These are mirrors of the corresponding sdf-transform-methods.





## Usage

is_ml_transformer(x)

is_ml_estimator(x)

ml_fit(x, dataset, ...)

ml_transform(x, dataset, ...)

ml_fit_and_transform(x, dataset, ...)

ml_predict(x, dataset, ...)

ml_predictml_model_classification(x, dataset, probability_prefix = "probability_", ...)





## Arguments


Argument      |Description
------------- |----------------
x | A ``ml_estimator``, ``ml_transformer`` (or a list thereof), or ``ml_model`` object.
dataset | A ``tbl_spark``.
... | Optional arguments; currently unused.
probability_prefix | String used to prepend the class probability output columns.




## Details

These methods are





## Value

When ``x`` is an estimator, ``ml_fit()`` returns a transformer whereas ``ml_fit_and_transform()`` returns a transformed dataset. When ``x`` is a transformer, ``ml_transform()`` and ``ml_predict()`` return a transformed dataset. When ``ml_predict()`` is called on a ``ml_model`` object, additional columns (e.g. probabilities in case of classification models) are appended to the transformed output for the user's convenience.





