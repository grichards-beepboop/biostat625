#First, vectorize quantile argument "x" my_pexp() so it can be tested on a vector of random variates
#Original pexp() is already vectorized
my_pexpV = Vectorize(my_pexp, vectorize.args = "x")
my_pexpV(c(1,2,3))

#Set rate = 1e-06, E(x) = 1e-06, for rate*x on the order of 10^-12
usethis::use_test("test3") #set up test case
test3 = rnorm(100, mean = 1e-06, sd = 1e-07)
test_that("my_pexp works on large values", {
  expect_equal(my_pexpV(test3, rate = 1e-06), pexp(test3, rate = 1e-06))
  expect_equal(my_pexpV(test3, rate = 1e-06, log.p = T),
               pexp(test3, rate = 1e-06, log.p = T))
})
