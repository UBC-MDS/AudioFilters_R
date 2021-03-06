#' Filter audio signal, attenuating frequencies below a cut off.
#'
#' @param input_signal numeric
#' @param cutoff_frequency numeric, cutoff frequency of the low pass filter.
#'
#' @return numeric, vector representing the audio signal with frequencies below the cut off attenuated.
#' @export

low_pass_filter <- function(input_signal, cutoff_frequency) {

  # Raise error if cutoff_frequency is not positive
  if(cutoff_frequency <= 0){
    stop("Error: cutoff frequency must be a positive number")
  }

  # Raise error if input_signal is of an unsupported type
  if(class(input_signal) != "numeric"){
    stop("Error: input_signal must be numeric")
  }

  # Create filter
  lp_filter <- signal::butter(3, 1/cutoff_frequency)       # low-pass filter

  # Apply the filter to the input signal
  output_signal <- signal::filter(lp_filter, input_signal) # apply filter
  return(output_signal)
}

