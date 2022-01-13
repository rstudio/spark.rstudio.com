# ml_one_vs_rest


Spark ML -- OneVsRest




## Description

Reduction of Multiclass Classification to Binary Classification. Performs reduction using one against all strategy. For a multiclass classification with k classes, train k models (one per class). Each example is scored against all k models and the model with highest score is picked to label the example.





## Usage
```r
ml_one_vs_rest(
  x,
  formula = NULL,
  classifier = NULL,
  features_col = "features",
  label_col = "label",
  prediction_col = "prediction",
  uid = random_string("one_vs_rest_"),
  ...
)
```




## Arguments


Argument      |Description
------------- |----------------
x | A ``spark_connection``, ``ml_pipeline``, or a ``tbl_spark``.
formula | Used when ``x`` is a ``tbl_spark``. R formula as a character string or a formula. This is used to transform the input dataframe before fitting, see ft_r_formula for details.
classifier | Object of class ``ml_estimator``. Base binary classifier that we reduce multiclass classification into.
features_col | Features column name, as a length-one character vector. The column should be single vector column of numeric values. Usually this column is output by `ft_r_formula`.
label_col | Label column name. The column should be a numeric column. Usually this column is output by `ft_r_formula`.
prediction_col | Prediction column name.
uid | A character string used to uniquely identify the ML estimator.
... | Optional arguments; see Details.




## Details

When ``x`` is a ``tbl_spark`` and ``formula`` (alternatively, ``response`` and ``features``) is specified, the function returns a ``ml_model`` object wrapping a ``ml_pipeline_model`` which contains data pre-processing transformers, the ML predictor, and, for classification models, a post-processing transformer that converts predictions into class labels. For classification, an optional argument ``predicted_label_col`` (defaults to ``"predicted_label"``) can be used to specify the name of the predicted label column. In addition to the fitted ``ml_pipeline_model``, ``ml_model`` objects also contain a ``ml_pipeline`` object where the ML predictor stage is an estimator ready to be fit against data. This is utilized by `ml_save` with ``type = "pipeline"`` to faciliate model refresh workflows.





## Value

The object returned depends on the class of ``x``.


  
*  `spark_connection`: When `x` is a `spark_connection`, the function returns an instance of a `ml_estimator` object. The object contains a pointer to
  a Spark `Predictor` object and can be used to compose
  `Pipeline` objects.

  
*  `ml_pipeline`: When `x` is a `ml_pipeline`, the function returns a `ml_pipeline` with
  the predictor appended to the pipeline.

  
*  `tbl_spark`: When `x` is a `tbl_spark`, a predictor is constructed then
  immediately fit with the input `tbl_spark`, returning a prediction model.

  
*  `tbl_spark`, with `formula`: specified When `formula`
    is specified, the input `tbl_spark` is first transformed using a
    `RFormula` transformer before being fit by
    the predictor. The object returned in this case is a `ml_model` which is a
    wrapper of a `ml_pipeline_model`.







## See Also

See http://spark.apache.org/docs/latest/ml-classification-regression.html for
  more information on the set of supervised learning algorithms.

Other ml algorithms: 
`ml_aft_survival_regression()`,
`ml_decision_tree_classifier()`,
`ml_gbt_classifier()`,
`ml_generalized_linear_regression()`,
`ml_isotonic_regression()`,
`ml_linear_regression()`,
`ml_linear_svc()`,
`ml_logistic_regression()`,
`ml_multilayer_perceptron_classifier()`,
`ml_naive_bayes()`,
`ml_random_forest_classifier()`



