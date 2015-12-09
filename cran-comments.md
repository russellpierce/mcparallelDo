## Test environments
* local OS X install, R 3.1.2
* ubuntu 12.04 (on travis-ci), R 3.1.2
* win-builder tests passed for R-release and R-devel; however the package has no meaningful effect on this platform

## R CMD check results
There were no ERRORs or WARNINGs. 

There was 1 NOTE:

* checking dependencies in R code ... NOTE
  Namespace in Imports field not imported from: 'R6'

  R6 is a build-time dependency.

Possibly mis-spelled words in DESCRIPTION:
  mccollect (10:26, 13:43)
  mcparallel (10:11, 11:53)
  mcparallelDo (9:36, 9:51)
All of the above are function names

## Downstream dependencies
This is a new package.  There are no downstream dependencies. 