# ml_call_constructor


Wrap a Spark ML JVM object




## Description

Identifies the associated sparklyr ML constructor for the JVM object by inspecting its
  class and performing a lookup. The lookup table is specified by the
  `sparkml/class_mapping.json` files of sparklyr and the loaded extensions.





## Usage
```r
ml_call_constructor(jobj)
```




## Arguments


Argument      |Description
------------- |----------------
jobj | The jobj for the pipeline stage.






