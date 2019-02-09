# This script tests the add_reverb() function

input_signal <- read.csv("data/bark.csv", colClasses=c('numeric'))[[1]]

test_that("Result of applying hall reverb to known input matches the expected output", {
  expected_output <- read.csv("data/reverb/bark_hall.csv", colClasses=c('numeric'))[[1]]
  output_signal <- add_reverb(input_signal, type = 'hall')

  expect_equal(output_signal, expected_output)
})

test_that("Result of applying church reverb to known input matches the expected output", {
  expected_output <- read.csv("data/reverb/bark_church.csv", colClasses=c('numeric'))[[1]]
  output_signal <- add_reverb(input_signal, type = 'church')

  expect_equal(output_signal, expected_output)
})
