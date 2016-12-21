
## spark.rstudio.com

This repository contains all of the code and assets needed to build the spark.rstudio.com website.

It combines [R Markdown Website](http://rmarkdown.rstudio.com/rmarkdown_websites.html) and [pkgdown](http://hadley.github.io/pkgdown/) to build create a comprehensive website that can be easily updated when new version of the package become available.

To update the Home page, News and/or Reference sections, just run the following R script: ``_scripts/pkgdown.R``. The script will perform the following operations:

- Download the most recent package files from the ``master`` branch in GitHub
- Use pkgdown to build the Reference index and pages, News and replaces the index.html file, directly in the root folder.

As of this version, the `_site.yml`file controls both the site and the pkgdown Reference index.  Future versions will separate the two so that the `_pkgdown.yml` file can exists inside the actual sparklyr package repository. 

After the updates are made, perform a Pull Request to the Master branch. When the PR is approved, the following Jenkins job is activated: https://buildmaster.rstudioservices.com/job/spark.rstudio.com/ Which does the following:

- Creates a clean Docker environment with R
- Runs the following script
```{}
    #!/bin/bash
    
    # Install latest rmarkdown from GitHub
    sudo R -e 'install.packages(c("devtools","plyr","htmltools"), repos="https://cran.rstudio.com")'
    sudo R -e 'devtools::install_github("rstudio/rmarkdown")'
    
    rm -rf _site
    
    # Build site
    R -e 'rmarkdown::render_site()' 
```
- The contents of the resulting ``_site`` folder is then copied to the S3 bucket that has the spark.rstudio.com files


