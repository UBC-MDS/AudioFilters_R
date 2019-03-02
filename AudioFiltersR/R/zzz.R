librosa <- NULL
np <- NULL

.onLoad <- function(libname, pkgname) {
  reticulate::py_install("librosa")
  reticulate::py_install("numpy")
  librosa <<- reticulate::import("librosa")
  np <<- reticulate::import("numpy")
}
