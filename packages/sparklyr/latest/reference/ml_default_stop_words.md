# ml_default_stop_words


Default stop words




## Description

Loads the default stop words for the given language.





## Usage
```r
ml_default_stop_words(
  sc,
  language = c("english", "danish", "dutch", "finnish", "french", "german",
    "hungarian", "italian", "norwegian", "portuguese", "russian", "spanish", "swedish",
    "turkish"),
  ...
)
```




## Arguments


Argument      |Description
------------- |----------------
sc | A ``spark_connection``
language | A character string.
... | Optional arguments; currently unused.




## Details

Supported languages: danish, dutch, english, finnish, french,
  german, hungarian, italian, norwegian, portuguese, russian, spanish,
  swedish, turkish. Defaults to English. See https://anoncvs.postgresql.org/cvsweb.cgi/pgsql/src/backend/snowball/stopwords/
  for more details





## Value

A list of stop words.






## See Also

`ft_stop_words_remover`



