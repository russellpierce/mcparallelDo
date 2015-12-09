## Test environments
* local OS X install, R 3.1.2
* ubuntu 12.04 (on travis-ci), R 3.1.2
* win-builder tests passed for R-release and R-devel; however the package has no meaningful effect on this platform

## R CMD check results
There were no ERRORs or WARNINGs. 
NOTE:  New Submission
The 404 error is expected as the package is not yet on CRAN.

Updating mcparallelDo documentation
Loading mcparallelDo
Setting env vars --------------------------------------------------------------------------------------------------------
CFLAGS  : -Wall -pedantic
CXXFLAGS: -Wall -pedantic
Building mcparallelDo ---------------------------------------------------------------------------------------------------
'/usr/lib/R/bin/R' --no-site-file --no-environ --no-save --no-restore CMD build '/home/russell/rsp/mcparallelDo'  \
  --no-resave-data 

* checking for file ‘/home/russell/rsp/mcparallelDo/DESCRIPTION’ ... OK
* preparing ‘mcparallelDo’:
* checking DESCRIPTION meta-information ... OK
* checking for LF line-endings in source and make files
* checking for empty or unneeded directories
* building ‘mcparallelDo_1.0.0.tar.gz’

Setting env vars --------------------------------------------------------------------------------------------------------
_R_CHECK_CRAN_INCOMING_USE_ASPELL_: TRUE
_R_CHECK_CRAN_INCOMING_           : TRUE
_R_CHECK_FORCE_SUGGESTS_          : FALSE
Checking mcparallelDo ---------------------------------------------------------------------------------------------------
'/usr/lib/R/bin/R' --no-site-file --no-environ --no-save --no-restore CMD check  \
  '/tmp/Rtmp9lC59f/mcparallelDo_1.0.0.tar.gz' --as-cran --timings 

* using log directory ‘/tmp/Rtmp9lC59f/mcparallelDo.Rcheck’
* using R version 3.2.2 (2015-08-14)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--as-cran’
* checking for file ‘mcparallelDo/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘mcparallelDo’ version ‘1.0.0’
* checking CRAN incoming feasibility ... NOTE
Maintainer: ‘Russell S. Pierce <russell.s.pierce@gmail.com>’
New submission
Found the following (possibly) invalid URLs:
  URL: http://cran.r-project.org/package=mcparallelDo
    From: README.md
    Status: 404
    Message: Not Found
* checking package namespace information ... OK
* checking package dependencies ... OK
* checking if this is a source package ... OK
* checking if there is a namespace ... OK
* checking for executable files ... OK
* checking for hidden files and directories ... OK
* checking for portable file names ... OK
* checking for sufficient/correct file permissions ... OK
* checking whether package ‘mcparallelDo’ can be installed ... OK
* checking installed package size ... OK
* checking package directory ... OK
* checking DESCRIPTION meta-information ... OK
* checking top-level files ... OK
* checking for left-over files ... OK
* checking index information ... OK
* checking package subdirectories ... OK
* checking R files for non-ASCII characters ... OK
* checking R files for syntax errors ... OK
* checking whether the package can be loaded ... OK
* checking whether the package can be loaded with stated dependencies ... OK
* checking whether the package can be unloaded cleanly ... OK
* checking whether the namespace can be loaded with stated dependencies ... OK
* checking whether the namespace can be unloaded cleanly ... OK
* checking loading without being on the library search path ... OK
* checking use of S3 registration ... OK
* checking dependencies in R code ... OK
* checking S3 generic/method consistency ... OK
* checking replacement functions ... OK
* checking foreign function calls ... OK
* checking R code for possible problems ... OK
* checking Rd files ... OK
* checking Rd metadata ... OK
* checking Rd line widths ... OK
* checking Rd cross-references ... OK
* checking for missing documentation entries ... OK
* checking for code/documentation mismatches ... OK
* checking Rd \usage sections ... OK
* checking Rd contents ... OK
* checking for unstated dependencies in examples ... OK
* checking examples ... OK
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ...
  Running ‘testthat.R’
 OK
* checking PDF version of manual ... OK
* DONE

Status: 1 NOTE

R CMD check succeeded

## Downstream dependencies
This is a new package.  There are no downstream dependencies. 