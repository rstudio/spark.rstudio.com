if (!requireNamespace("downlit", quietly = TRUE)) {
  install.packages("downlit", repos = "https://cloud.r-project.org", quiet = TRUE)
}
library(downlit)

# ── Collect HTML output files ────────────────────────────────────────────────
output_files <- strsplit(Sys.getenv("QUARTO_PROJECT_OUTPUT_FILES"), "\n")[[1]]
html_files   <- output_files[grepl("\\.html$", output_files)]

# Fallback: if Quarto didn't populate the env var (e.g. all files were served
# from the freeze cache in CI), scan the output directory directly.
if (length(html_files) == 0) {
  message("downlit: QUARTO_PROJECT_OUTPUT_FILES empty, scanning docs/ for HTML files")
  html_files <- list.files("docs", pattern = "\\.html$", recursive = TRUE, full.names = TRUE)
}

if (length(html_files) == 0) {
  message("downlit: no HTML files found, skipping")
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

# Workaround for https://github.com/r-lib/downlit/issues/173
# downlit special-cases library(tidyverse) but not library(tidymodels), so its
# member packages are never added to the search path used by find_rdname_attached().
# Pre-seeding downlit.attached fixes linking for step_*, boost_tree(), tune(), etc.
tidymodels_core <- c(
  "broom", "dials", "dplyr", "ggplot2", "hardhat", "infer", "modeldata",
  "parsnip", "purrr", "recipes", "rsample", "tibble", "tidyr", "tune",
  "workflows", "workflowsets", "yardstick"
)
options(downlit.attached = union(tidymodels_core, getOption("downlit.attached")))

# ── Process each file in-place ───────────────────────────────────────────────
# classes_pandoc() maps downlit's token classes to the CSS class names that
# Quarto / pandoc already emits, so existing syntax highlighting is preserved.
message(sprintf("downlit: linking R functions in %d HTML file(s)", length(html_files)))

for (file in html_files) {
  downlit::downlit_html_path(file, file, classes = downlit::classes_pandoc())
}

message("downlit: done")
