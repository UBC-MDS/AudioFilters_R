librosa <- NULL # nocov start
np <- NULL

.onLoad <- function(libname, pkgname) {
  reticulate::use_condaenv("r-reticulate")

  np <<- reticulate::import("numpy", delay_load = TRUE)
  librosa <<- reticulate::import("librosa", delay_load = TRUE)
} # nocov end
