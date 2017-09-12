
# copy pkgdown docs
source('scripts/copy_docs.R')

# build the site
unlink("public", recursive = TRUE)
blogdown::build_site()

