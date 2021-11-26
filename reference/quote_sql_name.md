# quote_sql_name


Translate input character vector or symbol to a SQL identifier




## Description

Calls dbplyr::translate_sql_ on the input character vector or symbol to obtain
the corresponding SQL identifier that is escaped and quoted properly





## Usage
```r
quote_sql_name(x, con = NULL)
```






