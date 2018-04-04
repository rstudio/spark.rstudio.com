library(pkgdown)
library(dplyr)
library(purrr)
library(stringr)
library(crayon)
library(yaml)
library(fs)

root <-  function() rprojroot::find_rstudio_root_file()

site_setup <- function() yaml::yaml.load_file("_blogdown.yml")

source_path <- function(path = "", base_path = NULL){
  if(is.null(base_path))base_path <- site_setup()$path[[1]][[1]]
  if(base_path == ""){
    path
  } else {
    file.path(base_path, path)
  }
}

target_path <- function(path = "", base_path = NULL){
  if(is.null(base_path))base_path <- site_setup()$path[[1]][[2]]
  if(base_path == ""){
    path
  } else {
    file.path(base_path, path)
  }
}

site_create <- function(overwrite = TRUE, skip_reference = FALSE){
  site_reset_public()
  site_content(overwrite = overwrite)
  if(!skip_reference) site_reference(overwrite = overwrite)
  blogdown::build_site(local = TRUE)
}

site_reset_public <- function(){
  p <- target_path("public")
  if(dir_exists(p)) dir_delete(p)
  dir_create(p)
}

site_reference <- function(overwrite = FALSE){
  
  if(file_exists(target_path("_pkgdown.yml"))) file_delete(target_path("_pkgdown.yml"))
  
  reference <- yaml.load_file("_blogdown.yml")
  reference$template$path <- path(
    root(),
    reference$template$path
  )
  writeLines(
    as.character(yaml::as.yaml(reference)), 
    "_pkgdown.yml")
  
  if(overwrite == TRUE){
    dir_copy(
      source_path("man"),
      target_path("man")
    )
    
    dir_copy(
      source_path("man-roxygen"),
      target_path("man-roxygen")
    )
    
    file_copy(
      source_path("DESCRIPTION"),
      target_path("DESCRIPTION"),
      overwrite = overwrite
    )
  }

  
  if(file_exists(target_path("content/reference"))) dir_delete(target_path("content/reference"))
  pkgdown::build_reference(path = target_path("content/reference"))
}

site_content <- function(overwrite = TRUE){
  
  site <- site_setup()
  
  target_files <- map_chr(site$site, ~target_path(.x$target))
  source_files <- map_chr(site$site, ~source_path(.x$source))
  
  if(!all(file_exists(source_files))) stop("Some files not found")
  
  files <- is_file(source_files)
  
  target_files %>%
    path_dir() %>%
    dir_create()
  
  target_files[!files] %>%
    dir_create()
  
  existing <- file_exists(target_files)
  dir_delete(target_files[!files & existing])
  
  seq_len(sum(!files)) %>%
    walk(~{
      dir_copy(
        path(source_files[!files])[.x],
        path(target_files[!files])[.x]
      )
    })
  
  file_copy(
    source_files[files], 
    target_files[files], 
    overwrite = overwrite
  )
  
  site$cleanup %>%
    map(~replace_text_folder(
      path = file.path(target_path(), .x[[1]]),
      type = .x[[2]],
      find = .x[[3]],
      replace = .x[[4]]))
}

replace_text <- function(location, lookfor, replacewith){
  read_in_file <- readLines(location)
  new_read_in_file <- gsub(lookfor, replacewith, x = read_in_file, ignore.case = TRUE)
  if(sum(read_in_file != new_read_in_file) > 0)write(new_read_in_file, location)
}

replace_text_folder <- function(path = NULL, type = "Rmd", find, replace){
  file_list <- list.files(path)
  file_list <- file_list[grepl(paste0("\\.", type), file_list)]
  file.path(path, file_list) %>%
    map(~replace_text(location = .x,
                      lookfor = find,
                      replacewith = replace ))
}

copy_repo <- function(github_repo, package_folder = "repos"){
  pr <- str_split(github_repo, "/")
  pr <- pr[[1]][2]
  repo <- path(root(), package_folder, pr)
  if(dir_exists(repo)) dir_delete(repo)
  system(paste0("git clone https://github.com/", github_repo, " -b master ", repo))
}



