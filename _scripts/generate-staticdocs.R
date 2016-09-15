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

ensure_package("hadley/staticdocs")
ensure_package("rstudio/sparklyr")
ensure_package("rstudio/htmltools")
ensure_package("krlmlr/rprojroot")

root <- rprojroot::find_rstudio_root_file()
if (!identical(basename(root), "spark.rstudio.com"))
  stop("script was not run from 'spark.rstudio.com' directory", call. = FALSE)

# ensure sparklyr package sources
info <- file.info(file.path(root, ".sparklyr"))
if (!isTRUE(info$isdir))
  system(paste("git clone https://github.com/rstudio/sparklyr -b master", file.path(root, ".sparklyr")))

owd <- setwd(file.path(root, ".sparklyr"))
system("git fetch && git checkout master")
setwd(owd)

# prepare references directory
ref_dir <- file.path(root, "reference/sparklyr/latest")
unlink(ref_dir, recursive = TRUE)
dir.create(ref_dir, recursive = TRUE)

# generate staticdocs page
staticdocs::build_site(
  pkg = file.path(root, ".sparklyr"),
  site_path = ref_dir,
  templates_path = file.path(root, "_staticdocs"),
  examples = FALSE,
  launch = FALSE,
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
