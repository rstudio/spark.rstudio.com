library(pkgsite)
library(gert)
library(fs)

dir_delete("_packages/sparkxgb/")
git_clone("https://github.com/rstudio/sparkxgb", path = "_packages/sparkxgb/")


write_reference(
  project = "_packages/sparkxgb/", 
  folder = "packages/sparkxgb/reference", 
  examples = FALSE
  )




