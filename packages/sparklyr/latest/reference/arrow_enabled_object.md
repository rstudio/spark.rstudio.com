# arrow_enabled_object


Determine whether arrow is able to serialize the given R object




## Description

If the given R object is not serializable by arrow due to some known
limitations of arrow, then return FALSE, otherwise return TRUE





## Usage
```r
arrow_enabled_object(object)
```




## Arguments


Argument      |Description
------------- |----------------
object | The object to be serialized






## Examples

```r


df <- tibble::tibble(x = seq(5))
arrow_enabled_object(df)

```





