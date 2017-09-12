devtools::install_github("rstudio/gitdown")

library(gitdown)

file.copy("repos/sparklyr/vignettes/",
          "content/",
          recursive = TRUE,
          overwrite = TRUE)

file.copy("repos/sparklyr/README.Rmd",
          "content/index-custom.Rmd")