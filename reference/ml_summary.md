# `ml_summary`

Spark ML -- Extraction of summary metrics


## Description

Extracts a metric from the summary object of a Spark ML model.


## Usage

```r
ml_summary(x, metric = NULL, allow_null = FALSE)
```


## Arguments

Argument      |Description
------------- |----------------
`x`     |     A Spark ML model that has a summary.
`metric`     |     The name of the metric to extract. If not set, returns the summary object.
`allow_null`     |     Whether null results are allowed when the metric is not found in the summary.


