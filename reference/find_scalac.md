# find_scalac


Discover the Scala Compiler




## Description

Find the ``scalac`` compiler for a particular version of
``scala``, by scanning some common directories containing
``scala`` installations.





## Usage
```r
find_scalac(version, locations = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
version | The ``scala`` version to search for. Versions
of the form ``major.minor`` will be matched against the
``scalac`` installation with version ``major.minor.patch``;
if multiple compilers are discovered the most recent one will be
used.
locations | Additional locations to scan. By default, the
directories ``/opt/scala`` and ``/usr/local/scala`` will
be scanned.






