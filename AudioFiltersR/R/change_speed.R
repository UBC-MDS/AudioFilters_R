#' Change the playback speed of an audio signal
#'
#' @param input_signal numeric
#' @param rate numeric, desired rate of change to the speed.
#' To increase the speed, pass in a value greater than 1.0.
#' To decrease the speed, pass in a value between 0.0 and 1.0.
#'
#' @return numeric, vector representing the audio signal with changed speed.
#' @export
#'
change_speed <- function(input_signal, rate) {
  print("Change speed!")
}
