#!/usr/bin/env Rscript
ensure_package <- function(source) {
  package <- basename(source)
  if (require(package, character.only = TRUE, quietly = TRUE))
    return(invisible(TRUE))
  
  devtools::install_github(source)
  if (require(package, character.only = TRUE, quietly = TRUE))
    return(invisible(TRUE))
  
  stop("failed to install / load package '", package, "'")
}

ensure_package("edgararuiz/pkgdown")
ensure_package("rstudio/sparklyr")
ensure_package("rstudio/htmltools")
ensure_package("krlmlr/rprojroot")
library(pkgdown)

root <- rprojroot::find_rstudio_root_file()
if (!identical(basename(root), "spark.rstudio.com"))
  stop("script was not run from 'spark.rstudio.com' directory", call. = FALSE)

# ensure sparklyr package sources
info <- file.info(file.path(root, "sparklyr_github"))
if (isTRUE(info$isdir))unlink(file.path(root, "sparklyr_github"), recursive = TRUE)
system(paste("git clone https://github.com/rstudio/sparklyr -b master", file.path(root, "sparklyr_github")))
file.copy(file.path(root,"_site.yml"),file.path(root, "sparklyr_github","_site.yml") )

owd <- setwd(file.path(root, "sparklyr_github"))
system("git fetch && git checkout master")
setwd(owd)

# prepare references directory
ref_dir <- file.path(root, "reference/sparklyr/latest")
unlink(ref_dir, recursive = TRUE)
dir.create(ref_dir, recursive = TRUE)

# generate staticdocs page

template_navbar( file.path(root, "sparklyr_github","_site.yml") )
build_reference(
  pkg = file.path(root, "sparklyr_github"),
  path = ref_dir,
  #templates_path = file.path(root, "_staticdocs"),
  #run_dont_run = TRUE,
  examples = FALSE,
  #launch = FALSE,
  seed = 1337
)

# ensure index.html
copied <- file.copy(
  file.path(ref_dir, "reference.html"),
  file.path(ref_dir, "index.html"),
  overwrite = TRUE
)

if (!copied)
  stop("failed to populate 'index.html'", call. = FALSE)

message(">>> staticdocs created successfully.")





