output_dir <- Sys.getenv("QUARTO_PROJECT_OUTPUT_DIR")
file.copy("_redirects", paste0(output_dir, "/_redirects"))