# download_scalac


Downloads default Scala Compilers




## Description

``compile_package_jars`` requires several versions of the
scala compiler to work, this is to match Spark scala versions.
To help setup your environment, this function will download the
required compilers under the default search path.





## Usage
```r
download_scalac(dest_path = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
dest_path | The destination path where scalac will be
downloaded to.




## Details

See ``find_scalac`` for a list of paths searched and used by
this function to install the required compilers.





