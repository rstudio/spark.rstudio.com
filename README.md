
## spark.rstudio.com

This repository contains all of the code and assets needed to build the spark.rstudio.com website.

It combines [R Markdown Website](http://rmarkdown.rstudio.com/rmarkdown_websites.html) and [pkgdown](http://hadley.github.io/pkgdown/) to build create a comprehensive website that can be easily updated when new version of the package become available.

To build the site, just run the following R script: ``_scripts/generate_site.R``. The script will perform the following operations:

- Build the website using ``rmarkdown::render_site(encoding = 'UTF-8')``
- Download the most recent package files from the ``master`` branch in GitHub
- Use pkgdown to build the Reference index and pages, News and replaces the index.html file, directly in the ``_site`` folder.

As of this version, the `_site.yml`file controls both the site and the pkgdown Reference index.  Future versions will separate the two so that the `_pkgdown.yml` file can exists inside the actual sparklyr package repository. 


