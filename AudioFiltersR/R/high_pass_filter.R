#' Filter audio signal, attenuating frequencies below a cut off.
#'
#' @param input_signal numeric
#' @param cutoff_frequency numeric, cutoff frequency of the high pass filter.
#'
#' @return numeric, vector representing the audio signal with frequencies below the cut off attenuated by 24 db.
#' @export
#'
high_pass_filter <- function(input_signal, cutoff_frequency) {
  print("High pass filter!")
}
