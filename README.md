# mcparallelDo [![License](http://img.shields.io/badge/license-GPL%20%28%3E=%202%29-brightgreen.svg?style=flat)](http://www.gnu.org/licenses/gpl-2.0.html)[![Travis-CI Build Status](https://travis-ci.org/drknexus/mcparallelDo.svg?branch=master)](https://travis-ci.org/drknexus/mcparallelDo)[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/mcparallelDo)](http://cran.r-project.org/package=mcparallelDo)[![Coverage Status](https://img.shields.io/codecov/c/github/drknexus/mcparallelDo/master.svg)](https://codecov.io/github/drknexus/mcparallelDo?branch=master)
A Simplified Interface for Running Commands on Parallel Processes.

`mcparallelDo` wraps mcparallel() and mccollect() from 'parallel' with temporary variables and a task handler.  Wrapped in this way the results of an mcparallel() call can be returned to the R session when the fork is complete without explicitly issuing a specific mccollect() to retrieve the value. Outside of top-level tasks, multiple mcparallel() jobs can be retrieved with a single call to mcparallelDoCheck(). [A *warning*, like a regular fork these functions do not currently return warnings, only errors](https://github.com/drknexus/mcparallelDo/issues/1).

**NOTE:** Given that Windows does not support parallalism through forks, the R base functions `mcparallel` and `mccollect` do not work.  Therefore, although `mcparallelDo` will work on windows and pass through commands to be evaluated, it has no meaningful effect on Windows.

**NOTE2:** The package [future](https://cran.r-project.org/package=future) appears to contain much of the functionality of `mcparallelDo` and more.  Consider using it before using `package:mcparallelDo` if all you want to do is defer the execution of code.  If you want an automatic notification when the code you are running is complete, then consider using `package:mcparallelDo`.

# Purpose
In an interactive session one may be blocked in performing additional work by waiting for a model fit.  It is cumbersome to launch an `mcparallel` fork to perform the work and the manually collect the result via `mccollect`.  Specfically, one is left uncertain about when the work might be completed, requiring either some blocking due to the use of `wait = TRUE` or some inconvience by repeatedly running mccollect every now and again to see if the computation has finished.

# Dependencies 

* parallel (for forking functions)
* R.utils (for temporary variables)
* checkmate (for argument checking)
* R6 (for the management object that keeps track of jobs)

# Getting Started
The package should install from source like any other R package.

# Status
The package works well, is used in production, and has been on CRAN continuously since 2015-12-09. All issues related to desirable additional functionality. Pull requests, bug reports, and other contributions are welcome.

# Author

Russell S. Pierce  

# License

GPL (>= 2)
