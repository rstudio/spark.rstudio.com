# install_mleap


Install MLeap runtime




## Description

Install MLeap runtime





## Usage
```r
install_mleap(dir = NULL, version = NULL, use_temp_cache = TRUE)
```




## Arguments


Argument      |Description
------------- |----------------
dir | (Optional) Directory to save the jars
version | Version of MLeap to install, defaults to the latest version tested with this package.
use_temp_cache | Whether to use a temporary Maven cache directory for downloading. Setting this to ``TRUE`` prevents Maven from creating a persistent ``.m2/`` directory. Defaults to ``TRUE``.






## Examples

```r

install_mleap()

```




