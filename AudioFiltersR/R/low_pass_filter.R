#' Filter audio signal, attenuating frequencies below a cut off.
#'
#' @param input_signal numeric
#' @param cutoff_frequency numeric, cutoff frequency of the low pass filter.
#'
#' @return numeric, vector representing the audio signal with frequencies below the cut off attenuated by 24 db.
#' @export
#'
low_pass_filter <- function(input_signal, cutoff_frequency) {
  print("Low pass filter!")

  bf <- signal::butter(3, 1/cutoff_frequency)                          # low-pass filter
  output_signal <- signal::filter(bf, input_signal) # apply filter
}
