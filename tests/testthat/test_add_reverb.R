# This script tests the add_reverb() function
input_signal <- read.csv("data/bark.csv", colClasses=c('numeric'))[[1]]

test_that("Result of applying hall reverb to known input matches the expected output", {
  expected_output <- read.csv("data/reverb/bark_hall.csv", colClasses=c('numeric'))[[1]]
  output_signal <- add_reverb(input_signal, type = 'hall')

  # Mean squared error between input and output signal
  mse <- mean(
    ((expected_output - output_signal)**2)
  )
  
  expect_lt(mse, 0.002)
})

test_that("Result of applying church reverb to known input matches the expected output", {
  expected_output <- read.csv("data/reverb/bark_church.csv", colClasses=c('numeric'))[[1]]
  output_signal <- add_reverb(input_signal, type = 'church')

  # Mean squared error between input and output signal
  mse <- mean(
    ((expected_output - output_signal)**2)
  )
  
  expect_lt(mse, 0.002)
})

test_that("Exception is raised for unsupported reverb type", {
  expect_error(add_reverb(input_signal, 'some_reverb_type'), "Error: Unsupported reverb type. Type must be 'hall' or 'church'")
})

test_that("Eexception is raised for unsupported input_signal argument type", {
  expect_error(add_reverb("test"), "Error: input_signal must be numeric")
})
