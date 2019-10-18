library(pkgdown)
library(purrr)
library(stringr)
library(fs)

copy_repo <- function(github_repo = "rstudio/sparklyr", package_folder = "repos"){
  pr <- str_split(github_repo, "/")
  pr <- pr[[1]][2]
  repo <- path(root(), package_folder, pr)
  if(dir_exists(repo)) dir_delete(repo)
  system(paste0("git clone https://github.com/", github_repo, " -b master ", repo))
}

root <-  function() rprojroot::find_rstudio_root_file()
if(dir_exists("repos")) dir_delete("repos")
copy_repo("edgararuiz/sparklyr")
if(dir_exists("content/reference")) dir_delete("content/reference")
dir_copy("repos/sparklyr/docs/reference", "content/reference")
index_page <-  readLines("content/reference/index.html")
wo_html <- purrr::map_chr(index_page, ~ gsub(".html\">", "\">", .x))
writeLines(wo_html, "content/reference/index.html")
blogdown::build_site()
