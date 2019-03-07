# This script tests the low_pass_filter function

input_signal <- read.csv("data/bark.csv", colClasses=c('numeric'))[[1]]

test_that("Result of filtering a known input signal with cutoff frequency of 1000Hz matches the expected output", {
  expected_output <- read.csv("data/lowpass/bark_lowpass_1000Hz.csv", colClasses=c('numeric'))[[1]]
  output_signal <- low_pass_filter(input_signal, 1000)

  # Mean squared error between input and output signal
  mse <- mean(
    ((expected_output - output_signal)**2)
  )

  expect_lt(mse, 0.002)
})

test_that("Exception is raised for invalid zero cutoff_frequency argument", {
  expect_error(low_pass_filter(input_signal, 0), "Error: cutoff frequency must be a positive number")
})

test_that("Eexception is raised for unsupported input_signal argument type", {
  expect_error(low_pass_filter("test", 500), "Error: input_signal must be numeric")
})
