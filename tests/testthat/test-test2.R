#First, vectorize quantile argument "x" my_pexp() so it can be tested on a vector of random variates
#Original pexp() is already vectorized
my_pexpV = Vectorize(my_pexp, vectorize.args = "x")
my_pexpV(c(1,2,3))

#Set rate = 10, E(x) = 10, for rate*x on the order of 10^2
usethis::use_test("test2") #set up test case
test2 = rnorm(100, mean = 10, sd = 1)
test_that("my_pexp works on large values", {
  expect_equal(my_pexpV(test2, rate = 10, log.p = T),
               pexp(test2, rate = 10, log.p = T))
})
