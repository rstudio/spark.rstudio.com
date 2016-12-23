devtools::install_github("edgararuiz/pkgdown")
library(pkgdown)


#----- Initializing main path variables
root <- rprojroot::find_rstudio_root_file()
sparklyr_root <- file.path(root, "_sparklyr_github")
original_wd <- getwd()

#----- Initializing folders
unlink(file.path(root, "reference", "*.*"))
unlink(file.path(root, "news", "*.*"))
unlink(file.path(root, "home", "*.*"))

#------ Downloading a fresh copy of the code from github
file.copy(file.path(root,"_scripts","footer.html"), file.path(root,"footer.html"))
unlink(sparklyr_root, recursive = TRUE)
system(paste("git clone https://github.com/rstudio/sparklyr -b master", sparklyr_root))

#------ Replacing pkgdown's default yml file with the site's & removing the index.html created by Build Website
file.copy(file.path(root,"_site.yml"), file.path(sparklyr_root,  "_pkgdown.yml"), overwrite = TRUE)

#------- Creating the site
setwd(sparklyr_root)
if(file.exists("README.Rmd"))file.remove("README.Rmd")

build_reference(path=file.path(root, "reference"), examples = FALSE)
build_news(path=file.path(root, "news"))
build_home(path=file.path(root, "home"))
setwd(original_wd)

#-------- Copying the Readme.md dependencies and updating the html references in index.html
system(paste("cp -R ", file.path(sparklyr_root, "README_files"), file.path(root, "home")))
index_path <- readLines("home/index.html")
header_line <- grep("</header>", index_path, ignore.case = TRUE)
index_path <- index_path[c(header_line: length(index_path))]
index_path <- gsub("README_FILES", "home/README_files", x=index_path, ignore.case = TRUE)
index_path <- gsub("</header>", "", x=index_path, ignore.case = TRUE)
write(index_path, file.path(root, "home", "index.html"))





