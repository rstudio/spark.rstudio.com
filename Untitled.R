library(ecodown)

base_site <- "https://edgararuiz.github.io/spark.rstudio.com/"

package_clone_and_build(
  url = "https://github.com/rstudio/mleap",
  project_folder = "mleap",
  url_prefix = base_site
)

package_clone_and_build(
  url = "https://github.com/rstudio/graphframes",
  project_folder = "graphframes",
  url_prefix = base_site
)

package_clone_and_build(
  url = "https://github.com/sparklyr/sparklyr",
  project_folder = "sparklyr",
  url_prefix = base_site,
  readme = FALSE
)

quarto::quarto_render()

site_autolink_html("docs")

# 
# # package_clone_git_repo(
# #   "https://github.com/rstudio/mleap", 
# #   target_folder = "~/mleap"
# #   )
# 
#  # package_clone_git_repo(
#  #   "https://github.com/rstudio/sparklyr", 
#  #   target_folder = "~"
#  # )
# 
# fs::dir_delete("docs")
# 
# library(ecodown)
# 
# base_site <- "https://edgararuiz.github.io/spark.rstudio.com/"
# 
# package_build_documentation(
#   pkg_folder = "~/mleap/mleap", 
#   project_folder = "mleap", 
#   url_prefix = base_site
# )
# 
# getOption("downlit.local_packages" )
# 
# package_build_documentation(
#   pkg_folder = "~/sparklyr", 
#   project_folder = "sparklyr", 
#   url_prefix = base_site,
#   readme = FALSE
# )
# 
# getOption("downlit.local_packages" )
# 
# quarto::quarto_serve()
# quarto::quarto_serve_stop()
# 
# site_autolink_html("docs")
# 
# 
# package_build_documentation(
#   pkg_folder = package_repo_clone_git("https://github.com/sparklyr/sparklyr"),
#   project_folder = "", 
#   readme = FALSE
# )
# 
# #quarto::quarto_serve()
# 
# 
# downlit::downlit_html_path("docs/guides/textmining.html", "docs/guides/textmining.html")
# downlit::downlit_html_path("docs/guides/textmining.html", "docs/guides/textmining1.html")
# 
# downlit::autolink("sparklyr::spark_connect()")
# 
# downlit::downlit_html_path("docs/guides/textmining.html", "docs/guides/textmining2.html")
# 
# downlit:::local_metadata("dbplyr")
# 
# downlit:::remote_metadata("sparklyr")
# downlit:::remote_metadata("graphframes")
# downlit:::remote_metadata("tensorflow")
# downlit:::remote_metadata("tidypredict")
# 
# start_options <- options()
# options("downlit.attached" = c("sparklyr"))
# options("downlit.local_packages" = c("sparklyr" = "made_up_site.com"))
# downlit::autolink("sparklyr::spark_connect()")
# downlit::autolink("spark_connect()")
# downlit::downlit_html_path("docs/guides/textmining.html", "docs/guides/textmining3.html")
# end_options <- options()
# downlit::autolink("spark_connect()")
# 
# options("downlit.attached" = c("sparklyr"))
# options("downlit.local_packages" = c("sparklyr" = "spark.rstudio.com"))
# downlit::autolink("spark_connect()")
# ?downlit::downlit_html_path("docs/guides/streaming.html", "docs/guides/streaming.html")
# downlit::autolink("<code>spark_connect()</code>")
# getOption("downlit.local_packages" )
# 
# library(purrr)
# 
# end_options_names <- names(end_options)
# start_options_names <- names(start_options)
# 
# matches <- map_lgl(end_options_names, ~.x %in% start_options_names)
# 
# diff_options <- end_options[!matches]
# 
# 
# library(xml2)
# tx <- read_html("docs/guides/streaming.html", encoding = "UTF-8")
# downlit::downlit_html_node(tx)
# xml_child(xml_child(xml_child(xml_child(xml_child(xml_child(xml_child(xml_child(xml_child(xml_child(tx, 2), 3), 3), 7), 5), 2), 3), 2), 1), 1)
# 
# 
# #-----------------------------------------------
# 
# quarto_folder <- "docs"
# html_files <- dir_ls(quarto_folder, recurse = TRUE, type = "file", glob = "*.html")
# walk(
#   html_files,
#   ~ {}downlit_html_path(.x, .x)
# )




