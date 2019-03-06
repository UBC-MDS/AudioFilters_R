librosa <- NULL # nocov start
np <- NULL

.onLoad <- function(libname, pkgname) {
  if (!reticulate::py_module_available("numpy")) {
    reticulate::conda_install("r-reticulate", "numpy")
  }

  if (!reticulate::py_module_available("librosa")) {
    reticulate::conda_install("r-reticulate", "librosa")
  }

  reticulate::use_condaenv("r-reticulate")

  np <<- reticulate::import("numpy", delay_load = TRUE)
  librosa <<- reticulate::import("librosa", delay_load = TRUE)
} # nocov end
