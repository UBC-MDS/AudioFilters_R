# This script tests the low_pass_filter function

input_signal <- read.csv("data/bark.csv", colClasses=c('numeric'))[[1]]

test_that("Result of filtering a known input signal with cutoff frequency of 1000Hz matches the expected output", {
  expected_output <- read.csv("data/lowpass/bark_lowpass_1000Hz.csv", colClasses=c('numeric'))[[1]]
  output_signal <- low_pass_filter(input_signal, 1000)

  expect_equal(output_signal, expected_output)
})
