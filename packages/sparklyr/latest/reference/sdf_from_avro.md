# sdf_from_avro


Convert column(s) from avro format




## Description

Convert column(s) from avro format





## Usage
```r
sdf_from_avro(x, cols)
```




## Arguments


Argument      |Description
------------- |----------------
x | An object coercible to a Spark DataFrame
cols | Named list of columns to transform from Avro format plus a valid Avro schema string for each column, where column names are keys and column schema strings are values (e.g., `c(example_primitive_col = "string", example_complex_col = "{\"type\":\"record\",\"name\":\"person\",\"fields\":[ {\"name\":\"person_name\",\"type\":\"string\"}, {\"name\":\"person_id\",\"type\":\"long\"}]}")`






