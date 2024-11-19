#First, vectorize quantile argument "x" my_pexp() so it can be tested on a vector of random variates
#Original pexp() is already vectorized
my_pexpV = Vectorize(my_pexp, vectorize.args = "x")
my_pexpV(c(1,2,3))

#Generate positive standard normal deviates
#Test on each set of logical args (lower.tail = T/F, log.p = T/F)
usethis::use_testthat() #set up unit testing
usethis::use_test("test1") #set up test case
test1 = abs(rnorm(100))
test_that("my_pexp works on simple case", {
  expect_equal(my_pexpV(test1), pexp(test1))
  expect_equal(my_pexpV(test1, lower.tail = F),
               pexp(test1, lower.tail = F))
  expect_equal(my_pexpV(test1, log.p = T),
               pexp(test1, log.p = T))
  expect_equal(my_pexpV(test1, lower.tail = F, log.p = T),
               pexp(test1, lower.tail = F, log.p = T))
})
