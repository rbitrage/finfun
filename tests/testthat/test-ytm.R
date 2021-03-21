test_that("calculates ytm from cash flows", {
  cf1 <- c(-95, 2, 2, 2, 2, 102)
  cf2 <- c(-125, 2, 2, 2, 2, 102)
  ytm1 <- 0.03094728
  ytm2 <- -0.02614715

  testthat::expect_equal(ytm(cf1), ytm1, tolerance = 0.0001)
  testthat::expect_equal(ytm(cf2), ytm2, tolerance = 0.0001)
})
