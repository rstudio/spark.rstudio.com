library(pkgdown)
library(purrr)
library(stringr)
library(fs)
library(sparklyr)


copy_repo <- function(github_repo = "sparklyr/sparklyr", package_folder = "repos"){
  pr <- str_split(github_repo, "/")
  pr <- pr[[1]][2]
  repo <- path(root(), package_folder, pr)
  if(dir_exists(repo)) dir_delete(repo)
  system(paste0("git clone https://github.com/", github_repo, " -b main ", repo))
}

missing_topics <- function(){
  pd <- yaml::read_yaml("repos/sparklyr/_pkgdown.yml")
  ti <- pd$reference %>%
    map(~.x$contents) %>%
    reduce(c)
  fns <- lsf.str("package:sparklyr")
  tp <- map_chr(
    fns,
    ~ ifelse(any(.x == ti), "", .x)
  )
  tp <- tp[tp != ""]
  tp <- sort(tp)
  cat(paste("    - ", tp, sep = "", collapse = "\n"))
}

root <-  function() rprojroot::find_rstudio_root_file()

update_site <- function(repo = "sparklyr/sparklyr") {
  ## Copy the repo
  if(dir_exists("repos")) dir_delete("repos")
  copy_repo(repo)

  ## Copy reference files
  static_dir <- "static"
  dst_dir <- file.path(static_dir, "reference")
  if(dir_exists(dst_dir)) dir_delete(dst_dir)
  dir.create(dst_dir, recursive = TRUE)

  src_dir <- file.path("repos", "sparklyr", "docs", "reference")
  new_files <- dir_ls(src_dir)
  file_copy(new_files, dst_dir)
  pkgdown_css <- file.path(src_dir, "..", "pkgdown.css")
  # hide the navbar header and make page-header fully visible
  write(
    c("\n",
      ".navbar-toggle {",
      "    visibility: hidden !important;",
      "}",
      ".page-header > h1 {",
      "    margin-top: 60px !important;",
      "}"
    ),
    file = pkgdown_css,
    append = TRUE
  )
  file_copy(pkgdown_css, "static/", overwrite = TRUE)

  reference_page <-  readLines("static/reference/index.html")
  reference_page <- purrr::map_chr(reference_page, ~ gsub("<h1>Reference</h1>", "", .x))
  writeLines(reference_page, "static/reference/reference_home.html")
  unlink("static/reference/index.html")

  ## Copy NEWS
  file_copy("repos/sparklyr/NEWS.md", "content/news.md", overwrite = TRUE)

  ## Update site
  blogdown::serve_site()
}


