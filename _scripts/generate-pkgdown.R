devtools::install_github("edgararuiz/pkgdown")
library(pkgdown)
library(sparklyr)

#----- Initializing main path variables
root <- rprojroot::find_rstudio_root_file()
sparklyr_root <- file.path(root, "sparklyr_github")
original_wd <- getwd()

#------ Downloading a fresh copy of the code from github
unlink(sparklyr_root, recursive = TRUE)
system(paste("git clone https://github.com/rstudio/sparklyr -b master", sparklyr_root))

#------ Replacing pkgdown's default yml file with the site's & removing the index.html created by Build Website
file.copy(file.path(root,"_site.yml"), file.path(sparklyr_root,  "_pkgdown.yml"), overwrite = TRUE)
file.remove(file.path(root,"_site/index.html"))



#------- Creating the site
setwd(sparklyr_root)
if(file.exists("README.Rmd"))file.remove("README.Rmd")
system(paste("cp -R ", file.path(sparklyr_root, "README_files"), file.path(root, "_site/")))
build_site(path=file.path(root,"_site"))
setwd(original_wd)


