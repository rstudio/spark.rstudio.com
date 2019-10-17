#' @import pkgdown
#' @import stringr
#' @import dplyr
#' @import rlang
#' @importFrom purrr map
#' @importFrom purrr map_chr
#' @importFrom purrr imap
#' @importFrom purrr reduce
#' @importFrom purrr walk
#' @import yaml
#' @import fs

root <-  function() rprojroot::find_rstudio_root_file()

get_folder <- function(folder) {
  if(dir_exists(folder)) dir_create(folder)
  folder
}

#' @export
get_repo_folder <- function() get_folder("repos")

#' @export
get_blogdown_folder <- function() get_folder("blogdown")

#' @export
get_package_folder <- function() get_folder("package")

#' @export
pkg_from_repo <- function(package_folder = get_repo_folder(),
                          package = "sparklyr") {
  pkgdown::as_pkgdown(file.path(package_folder, package))
}

#' @export
copy_repo <- function(github_repo = "rstudio/sparklyr", 
                      package_folder = get_repo_folder()){
  pr <- str_split(github_repo, "/")
  pr <- pr[[1]][2]
  repo <- path(root(), package_folder, pr)
  if(dir_exists(repo)) dir_delete(repo)
  system(paste0("git clone https://github.com/", github_repo, " -b master ", repo))
}

#' @export
site_setup <- function(path = system.file("_blogdown.yml", 
                                          package = "spark.rstudio.com")) {
  yaml::yaml.load_file(path)
}  

#' @export
copy_blogdown <- function(path = system.file("blogdown", 
                                             package = "spark.rstudio.com")) {
  dir_copy(
    path, 
    get_blogdown_folder()
  )
}

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

#' @export
site_content <- function(overwrite = TRUE){
  
  site <- site_setup()
  target_files <- c(
    map_chr(site$site, ~ target_path(.x$target)),
    map_chr(site$articles, ~.x$target)
    )
  source_files <- c(
    map_chr(site$site, ~ source_path(.x$source)),
    map_chr(site$articles, ~.x$source)
    )
  
  if(!all(file_exists(source_files))) {
    map(source_files, ~if(!file_exists(.x)) print(.x))
    stop("Some files not found")
  } 
  
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


# ------------------------------------------------------
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

#' @export
site_reference <- function(overwrite = FALSE){
  
  #site_reset_public()
  
  if(file_exists(target_path("_pkgdown.yml"))) file_delete(target_path("_pkgdown.yml"))
  
  reference <- site_setup()
  reference$template$path <- path(
    root(),
    reference$template$path
  )
  writeLines(
    as.character(yaml::as.yaml(reference)), 
    "_pkgdown.yml")
  
  if(overwrite == TRUE){
    if(file_exists(target_path("man"))) dir_delete(target_path("man"))
    if(file_exists(target_path("man-roxygen"))) dir_delete(target_path("man-roxygen"))
    if(file_exists(target_path("DESCRIPTION"))) file_delete(target_path("DESCRIPTION"))
  }
  if(!file_exists(target_path("man"))){
    dir_copy(
      source_path("man"),
      target_path("man")
    )
  }
  
  if(!file_exists(target_path("man-roxygen"))){
    dir_copy(
      source_path("man-roxygen"),
      target_path("man-roxygen")
    )
  }
  
  if(!file_exists(target_path("DESCRIPTION"))){
    file_copy(
      source_path("DESCRIPTION"),
      target_path("DESCRIPTION")
    )
  }
  
  if(file_exists(target_path("content/reference"))) dir_delete(target_path("content/reference"))
  
  pkg <- pkg_from_repo()
  
  topics <- map(pkg$meta$reference, ~.x$contents) %>%
    reduce(function(x, y) c(x, y)) 
  
  rds <- pkg$topics %>%
    select(alias) %>%
    pull() %>%
    imap(~tibble(
      rd = .y,
      topics = .x
    )) %>%
    bind_rows()
  
  keep_rds <- topics %>%
    map(~rds[rds$topics == .x, 1]) %>%
    map(as.character) %>%
    reduce(function(x, y) c(x, y)) 
  
  keep_files <- list.files("man") %>%
    map(~{
      x <- .x
      !any(map_lgl(keep_rds, ~.x == x))
    }) %>%
    flatten() %>%
    reduce(function(x, y) c(x, y)) 
  
  walk(list.files("man")[keep_files], ~unlink(file.path("man", .x)))
  
  pkgdown::build_reference()
  replace_text("content/reference/index.html", ".html\">", "\">")
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
