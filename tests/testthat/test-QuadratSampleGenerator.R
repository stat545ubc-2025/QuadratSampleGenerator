test_that("QuadratSampleGenerator works", {
  expect_error(quadrat_sample_generator(2.5, 10, 12)) # Check if error for non integers is recognized
  expect_error(quadrat_sample_generator(-10, 10, 25)) # Check if error for negative numbers is recognized
  expect_error(quadrat_sample_generator(1, 5, 6)) # Check if error for n_quadrats sampled is greater than height*width
})
