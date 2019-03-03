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

  # Raise error if rate is not positive
  if (rate <= 0) {
    stop("Error: rate must be a positive number")
  }

  # Raise error if input_signal is of an unsupported type
  if (class(input_signal) != "numeric") {
    stop("Error: input_signal must be numeric")
  }

  # Transform signal to frequency domain
  frequency_domain_signal = librosa$core$stft(np$array(input_signal))

  # Change speed with the phase vocoding method
  fds_changed_speed = librosa$core$phase_vocoder(frequency_domain_signal, rate)

  # Transform frequency domain signal back to time domain
  td_changed_speed = as.vector(librosa$core$istft(fds_changed_speed))

  # Normalize and create a Wave object
  output_signal <- tuneR::normalize(
    tuneR::Wave(left = td_changed_speed, bit = 32, pcm = FALSE, samp.rate = 44100), unit = '32'
  )

  return(output_signal@left)
}
