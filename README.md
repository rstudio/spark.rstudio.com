
## spark.rstudio.com

This repository contains all of the code and assets needed to build the spark.rstudio.com website.

It combines [R Markdown Website](http://rmarkdown.rstudio.com/rmarkdown_websites.html) and [pkgdown](http://hadley.github.io/pkgdown/) to build create a comprehensive website that can be easily updated when new version of the package become available.

There are two steps to re-build the full site: 

1. If you're on a relatively recent version of the RStudio IDE, you should see a `Build` tab when you oepn the RStudio project contained in this repo; clicking `Build Website` there will do everything you need.

2. Run the generate-pkgdown.R script, located in the _scripts folder.  

The finished site will be available in the _site folder.

See `_site.yml` for high-level changes to things like the navbar or overall structure. Otherwise, edit the associated Rmd for the page you want to change.


