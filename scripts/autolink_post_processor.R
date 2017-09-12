

autolink_post_processor <- function(metadata, input_file, output_file, clean, verbose) {
  
  # determine output_dir
  output_dir <- getwd()

  # get relative path to website root
  require(rprojroot, quietly = TRUE)
  website_root <- find_root_file(criterion = has_file("config.toml"))
  updirs <- pkgdown:::dir_depth(output_dir) - pkgdown:::dir_depth(website_root) - 1
  if (updirs == 0)
    website_relative_path <- "."
  else
    website_relative_path <- paste(rep_len("..", updirs), collapse = "/")
  
  # determine relative paths to local packages
  local_packages = c(
    keras = file.path(website_relative_path, "keras"),
    tfestimators = file.path(website_relative_path, "tfestimators"),
    tensorflow = file.path(website_relative_path, "tensorflow")
  )
  
  # tweak the path if we are in a package directory
  require(rprojroot)
  package_criterion <- has_file("index.Rmd", contents = "^repo: https://github.com/rstudio")
  package_index <- tryCatch(find_root_file("index.Rmd", criterion = package_criterion),
                            error = function(e) NULL)
  if (!is.null(package_index)) {
    
    # determine package dir
    package_dir <- dirname(package_index)
  
    # determine package name
    repo <- rmarkdown::yaml_front_matter(package_index)$repo
    split <- strsplit(repo, "/")[[1]]
    package <- split[[length(split)]]
  
    # tweak path
    local_packages[[package]] <- sub(paste0("/../", package), 
                                     "", 
                                     local_packages[[package]],
                                     fixed = TRUE)
  }
  
  # read contents of output file and add html boundaries
  output_lines <- readLines(output_file)
  output_lines <- c("<html><body>", output_lines, "</body></html>")
  writeLines(output_lines, output_file)
  
  # perform autolink -- it can fail if the document is empty so 
  # allow errors to pass
  tryCatch(pkgdown::autolink_html(output_file, local_packages = local_packages),
           error = function(e) cat("Skipping ", normalizePath(output_file), "\n"))
  
  # fixup output 
  output_lines <- readLines(output_file)
  output_lines <- output_lines[!grepl("<!DOCTYPE html PUBLIC", output_lines, fixed = TRUE)]
  output_lines <- output_lines[!grepl("<html><body>", output_lines, fixed = TRUE)]
  output_lines <- output_lines[!grepl("</body></html>", output_lines, fixed = TRUE)]
  writeLines(output_lines, output_file)
  
  # return output_file
  output_file
}



