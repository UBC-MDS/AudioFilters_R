librosa <- NULL # nocov start
np <- NULL

.onLoad <- function(libname, pkgname) {
  reticulate::use_condaenv("r-reticulate")

  np <<- reticulate::import("numpy", delay_load = FALSE)
  librosa <<- reticulate::import("librosa", delay_load = FALSE)
} # nocov end
