# %->%


Infix operator for composing a lambda expression




## Description

Infix operator that allows a lambda expression to be composed in R and be
translated to Spark SQL equivalent using ' ``dbplyr::translate_sql`` functionalities





## Usage
```r
params %->% ...
```




## Arguments


Argument      |Description
------------- |----------------
params | Parameter(s) of the lambda expression, can be either a single
parameter or a comma separated listed of parameters in the form of
``.(param1, param2, ... )`` (see examples)
... | Body of the lambda expression, *must be within parentheses*




## Details

Notice when composing a lambda expression in R, the body of the lambda expression
*must always be surrounded with parentheses*, otherwise a parsing error will occur.






## Examples

```r


a %->% (mean(a) + 1) # translates to <SQL> `a` -> (AVG(`a`) OVER () + 1.0)

.(a, b) %->% (a < 1 && b > 1) # translates to <SQL> `a`,`b` -> (`a` < 1.0 AND `b` > 1.0)

```



