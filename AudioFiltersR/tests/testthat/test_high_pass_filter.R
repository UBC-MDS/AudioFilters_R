# This script tests the change_speed() function

input_signal <- read.csv("data/bark.csv", colClasses=c('numeric'))[[1]]

test_that("Result of filtering a known input signal with cutoff frequency of 440hz matches the expected output", {
  expected_output <- read.csv("data/change_speed/bark_440.csv", colClasses=c('numeric'))[[1]]
  output_signal <- high_pass_filter(input_signal, 440)

  expect_equal(output_signal, expected_output)
})
