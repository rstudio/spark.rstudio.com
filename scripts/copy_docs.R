

# utility functions
copy_files <- function(from, to) {
  from <- gsub("\\\\", "/", from)
  to <- gsub("\\\\", "/", to)
  print(from)
  print(to)
  if(length(from) > 0) {
    if (!dir.exists(to))
      dir.create(to, recursive = TRUE)
    file.copy(from, to, overwrite = TRUE, copy.mode = TRUE, copy.date = TRUE)
  }
}


# copy package docs
copy_docs <- function(package, packages_dir = "~/packages", output = c("home", "articles", "examples", "reference")) {
  
  package_dir <- file.path(packages_dir, package) 
  package_docs_dir <- file.path(package_dir, "docs")
  package_vignettes_dir <- file.path(package_dir, "vignettes")
  package_examples_dir <- file.path(package_dir, "vignettes/examples")
  
  list_images <- function(dir) {
    images_dir <- file.path(dir, "images")
    if (utils::file_test("-d", images_dir))
      list.files(images_dir, "^.*\\.(png|jpg)$", full.names = TRUE)
    else
      character()
  }
  
  list_examples <- function(dir) {
    examples <- list.files(dir, "^.*\\.(Rmd|R)$")
    examples <- examples[examples != "index.Rmd"]
    file.path(dir, examples)
  }
  
  # copy home page
  if ("home" %in% output) {
    copy_files(
      from = file.path(package_dir, "index.Rmd"),
      to = paste0("content/", package)
    )
    copy_files(
      from = list_images(file.path(package_dir, "docs")),
      to = paste0("static/", package, "/images")
    )
  }
  
  # copy articles
  if ("articles" %in% output) {
    copy_files(
      from = list.files(package_vignettes_dir, glob2rx("*.Rmd"), full.names = TRUE),
      to = paste0("content/", package, "/articles")
    )
    copy_files(
      from = list_images(package_vignettes_dir)   ,
      to = paste0("static/", package, "/articles/images")
    )
  }
  
  # copy examples
  if ("examples" %in% output) {
    if (file_test("-d", package_examples_dir)) {
      copy_files(
        from = list_examples(package_examples_dir),
        to = paste0("content/", package, "/articles/examples")
      )
    }
  }

  # render reference
  if ("reference" %in% output) {
    # first copy the package directory into pkgdown staging dir
    pkgdown_dir <- file.path("pkgdown", "packages")
    if (!dir.exists(pkgdown_dir))
      dir.create(pkgdown_dir, recursive = TRUE)
    pkgdown_staging_dir <- file.path(pkgdown_dir, package)
    if (dir.exists(pkgdown_staging_dir))
      unlink(file.path(pkgdown_staging_dir), recursive = TRUE)
    copy_files(package_dir, pkgdown_dir)
    
    # now edit the template_path in the yaml to point to our theme's template
    target_yaml <- file.path(pkgdown_staging_dir, "pkgdown", "_pkgdown.yml")
    current_yaml <- yaml::yaml.load_file(target_yaml)
    abs_template_path <- normalizePath(file.path("themes/rstudio-docs-theme/pkgdown/templates"))
    abs_asset_path <- normalizePath(file.path("themes/rstudio-docs-theme/pkgdown/assets"))
    current_yaml$template$path <- abs_template_path
    current_yaml$template$assets <- abs_asset_path
    current_yaml <- as.character(yaml::as.yaml(current_yaml))
    writeLines(current_yaml, target_yaml)
    
    # determine the target directory
    reference_path <- normalizePath(paste0("content/", package, "/reference"))
    unlink(reference_path, recursive = TRUE)
    dir.create(reference_path)
                                    
    # change wd to staging dir
    oldwd <- setwd(pkgdown_staging_dir)
    on.exit(setwd(oldwd), add = TRUE)
    
    pkgdown::build_reference(path = reference_path, lazy = FALSE)
  }
  
  invisible()
}


copy_docs("sparklyr")





