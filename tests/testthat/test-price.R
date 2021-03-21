test_that("calculates bond price from cash flows and ytm", {
  cf1 <- c(-95, 2, 2, 2, 2, 102)
  cf2 <- c(-125, 2, 2, 2, 2, 102)
  ytm <- 0.01
  price1 <- 9.853431
  price2 <- -20.14657

  testthat::expect_equal(price(cf1, ytm), price1, tolerance = 0.0001)
  testthat::expect_equal(price(cf2, ytm), price2, tolerance = 0.0001)
})
