# This script tests the low_pass_filter function

input_signal <- read.csv("data/bark.csv", colClasses=c('numeric'))[[1]]

test_that("Result of filtering a known input signal with cutoff frequency of 1000Hz matches the expected output", {
  expected_output <- read.csv("data/lowpass/bark_lowpass_1000Hz.csv", colClasses=c('numeric'))[[1]]
  output_signal <- low_pass_filter(input_signal, 1000)

  expect_equal(output_signal, expected_output)
})


#Python version:
# def test_low_pass_filter_attenuates_frequencies_below_1000_cutoff():
#   expected_output = np.genfromtxt('tests/data/lowpass/bark_lowpass_1000Hz.csv', dtype = 'float32')
# output_signal = low_pass_filter(input_signal, 1000)
#
# # Mean squared error between input and output signal
# mse = ((expected_output - output_signal)**2).mean(axis=0)
# print(mse)
#
# assert mse < 0.00001, "Output does not match test data!"
