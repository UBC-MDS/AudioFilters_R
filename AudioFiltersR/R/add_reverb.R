#' Add a reverb effect to the audio signal, simulating a different recording environment
#'
#' @param input_signal numeric
#' @param type character, choice of reverb effect. Options are 'hall' and 'church'. Defaults to 'hall'
#'
#' @return numeric, vector representing the audio signal with the specified type of reverb applied.
#' @export
#'
add_reverb <- function(input_signal, type = 'hall') {

  if (type == 'hall') {
    impulse_response <- read.csv(system.file("impulse_responses", "impulse_hall.csv", package = "AudioFiltersR"), colClasses=c('numeric'))[[1]]
  } else if (type == 'church') {
    impulse_response <- read.csv(system.file("impulse_responses", "impulse_church.csv", package = "AudioFiltersR"), colClasses=c('numeric'))[[1]]
  } else {
    stop("Error: Unsupported reverb type. Type must be 'hall' or 'church'")
  }

  convolved_signal <- convolve(input_signal, rev(impulse_response), type = 'open')
  output_signal <- tuneR::normalize(
    tuneR::Wave(left= convolved_signal, bit = 32, pcm = FALSE, samp.rate = 44100), unit = '32'
  )

  return(output_signal@left[-1])
}
