# This script tests the change_speed() function

input_signal <- read.csv("data/bark.csv", colClasses=c('numeric'))[[1]]

test_that("Result of changing the speed of a known input signal with a rate of 2 matches the expected output", {
  expected_output <- read.table("data/change_speed/bark_double_speed.csv", colClasses=c('numeric'))[[1]]
  output_signal <- change_speed(input_signal, 2.0)

  expect_equal(output_signal, expected_output)
})

test_that("Result of changing the speed of a known input signal with a rate of 0.5 matches the expected output", {
  expected_output <- read.table("data/change_speed/bark_half_speed.csv", colClasses=c('numeric'))[[1]]
  output_signal <- change_speed(input_signal, 0.5)

  expect_equal(output_signal, expected_output)
})

test_that("Exception is raised for invalid zero rate argument", {
  expect_error(change_speed(input_signal, 0), "Error: rate must be a positive number")
})

test_that("Eexception is raised for unsupported input_signal argument type", {
  expect_error(change_speed("test", 3), "Error: input_signal must be numeric")
})
