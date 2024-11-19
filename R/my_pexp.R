#' @name my_pexp
#' @title Exponential CDF
#' @description Calculates the cumulative probability of the exponential distribution function
#' @description my_pexp() functions identically to the pexp() function in the 'stats' package of R
#' for scalar value of x (non-vectorized)
#' @param x a numeric quantile
#' @param rate a numeric value of rate parameter (default 1)
#' @param lower.tail a logical value indicating whether to compute
  #' P[X<=x] if TRUE or P[X>x] if FALSE (default TRUE)
#' @param log.p a logical value indicating whether to return
  #' the log probability (default FALSE)
#' @return cumulative distribution function evaluated at x
#' @export
my_pexp <- function(x, rate = 1, lower.tail = TRUE, log.p = FALSE) {
  #Screen for very large values
  #For lower-tail log probability precision, use log1p()
  if (rate * x > 1 && lower.tail && log.p) {
    return(log1p(-exp(-rate * x)))
  }

  #Since large values eliminated for the lower-tail/log, use log() for this case

  #For lower tail values
  #Return lower-tail probability or log prob., depending on log.p arg
  #Use expm1() for precision of 1 - exp
  if (lower.tail) {
    return(ifelse(log.p, log(-expm1(-rate * x)), -expm1(-rate * x)))
  }

  #For upper tail values
  #Return upper-tail probability or log prob., depending on log.p arg
  if (!lower.tail)
    return(ifelse(log.p, -rate * x, exp(-rate * x)))
}
