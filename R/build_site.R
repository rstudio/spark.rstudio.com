library(pkgdown)
library(purrr)
library(stringr)
library(fs)
library(sparklyr)


copy_repo <- function(github_repo = "rstudio/sparklyr", package_folder = "repos"){
  pr <- str_split(github_repo, "/")
  pr <- pr[[1]][2]
  repo <- path(root(), package_folder, pr)
  if(dir_exists(repo)) dir_delete(repo)
  system(paste0("git clone https://github.com/", github_repo, " -b master ", repo))
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

update_site <- function(repo = "rstudio/sparklyr") {
  ## Copy the repo
  if(dir_exists("repos")) dir_delete("repos")
  copy_repo(repo)
  
  ## Copy reference files
  help_files <- dir_ls("content/reference", glob = "*.html")
  if(length(help_files) > 0) file_delete(help_files)
  new_files <- dir_ls("repos/sparklyr/docs/reference/")
  file_copy(new_files, "content/reference")
  
  ## Delete index in reference to let hugo generate pages
  unlink("content/reference/index.html")
  
  ## Copy NEWS
  file_copy("repos/sparklyr/NEWS.md", "content/news.md", overwrite = TRUE)
  
  ## Update site
  blogdown::serve_site()
  
  ## Fix reference index 
  file_copy("repos/sparklyr/docs/reference/index.html", "content/reference")
  index_page <-  readLines("content/reference/index.html")
  wo_html <- purrr::map_chr(index_page, ~ gsub(".html\">", "\">", .x))
  writeLines(wo_html, "content/reference/index.html")
  
  ## Update site
  blogdown::serve_site()
}


