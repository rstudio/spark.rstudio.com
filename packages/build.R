library(pkgsite)
library(gert)
library(glue)
library(fs)

build_reference <- function(pkg, org, sub = NULL) {
  clone <- path("_packages", pkg)
  if(is.null(sub)) {
    target <- path("packages", pkg)
  } else {
    target <- path("packages", pkg, sub)
  }
  repo_url <- glue("https://github.com/{org}/{pkg}")
  if(dir_exists(clone)) {
    system2("git", paste0("-C '", path_abs(clone), "' pull ", repo_url, " -q"))
  } else {
    git_clone(repo_url, path = clone)  
  }
  write_reference(
    project = clone, 
    folder = path(target, "reference"), 
    examples = FALSE
  )
  file_copy(path(clone, "NEWS.md"), path(target, "news.md"), overwrite = TRUE)  
}

build_reference("sparklyr", "sparklyr", "latest")
build_reference("pysparklyr", "mlverse")



