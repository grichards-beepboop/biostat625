## Package: myPexp
[![Codecov test coverage](https://codecov.io/gh/grichards-beepboop/biostat625/graph/badge.svg)](https://app.codecov.io/gh/grichards-beepboop/biostat625)
#### Functions: my_pexp()
*See help page for more info on the function*
#### **What is the purpose of this package?**
The package myPexp was created as part of a course assignment for 
"BIOSTAT 625: Computing with Big Data". The function my_pexp() was implemented 
as a course assignment for "BIOSTAT 615: Statistical Computing". Both courses are
at the University of Michigan, and the assignment documents for both the package and
the function can be found in the root myPexp file as "hw3.pdf" and "ex2.pdf",
respectively.  
This implementation functions identically to the original R function when given a
single-value argument for x (see function documentation); that is, this implementation
is not vectorized. Moreover, my_pexp achieves a level of efficiency that is lesser than,
but comparable to, *stats* pexp. See 'vignettes/tutorial.Rmd' for testing and benchmarking.

