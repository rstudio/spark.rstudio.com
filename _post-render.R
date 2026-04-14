if (!requireNamespace("downlit", quietly = TRUE)) {
  install.packages("downlit", repos = "https://cloud.r-project.org", quiet = TRUE)
}
library(downlit)

# ── Collect HTML output files ────────────────────────────────────────────────
output_files <- strsplit(Sys.getenv("QUARTO_PROJECT_OUTPUT_FILES"), "\n")[[1]]
html_files   <- output_files[grepl("\\.html$", output_files)]

if (length(html_files) == 0) {
  message("downlit: no HTML files to process, skipping")
  quit(status = 0)
}

# ── Point downlit at the local package reference docs ────────────────────────
# Functions from these packages will link to the reference pages hosted on this
# site rather than to CRAN or external pkgdown sites. Functions from all other
# packages (dplyr, ggplot2, tidymodels, etc.) are resolved automatically by
# downlit against their published pkgdown / CRAN documentation.
site_url <- "https://spark.posit.co"

options(
  downlit.local_packages = c(
    sparklyr    = file.path(site_url, "packages/sparklyr/latest"),
    pysparklyr  = file.path(site_url, "packages/pysparklyr"),
    sparkxgb    = file.path(site_url, "packages/sparkxgb"),
    mleap       = file.path(site_url, "packages/mleap"),
    graphframes = file.path(site_url, "packages/graphframes"),
    sparktf     = file.path(site_url, "packages/sparktf")
  )
)

# ── Process each file in-place ───────────────────────────────────────────────
# classes_pandoc() maps downlit's token classes to the CSS class names that
# Quarto / pandoc already emits, so existing syntax highlighting is preserved.
message(sprintf("downlit: linking R functions in %d HTML file(s)", length(html_files)))

for (file in html_files) {
  downlit::downlit_html_path(file, file, classes = downlit::classes_pandoc())
}

message("downlit: done")
