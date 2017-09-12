
autolink_html_dir <- function(html_dir, package, package_root) {
  html_files <- file.path(html_dir, list.files(html_dir, pattern = glob2rx("*.html")))
  for (html_file in html_files) {
    local_packages <- package_root
    names(local_packages) <- package
    pkgdown::autolink_html(html_file, local_packages = local_packages)
  }
}

autolink_package <- function(package) {
  package_dir <- file.path("public", package)
  autolink_html_dir(package_dir, package, ".")
  autolink_html_dir(file.path(package_dir, "articles"), package, "..")
  autolink_html_dir(file.path(package_dir, "articles", "examples"), package, "../..")
}

autolink_package("keras")
autolink_package("tfestimators")


