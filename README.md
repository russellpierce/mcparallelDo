# mcparallelDo [![License](http://img.shields.io/badge/license-GPL%20%28%3E=%202%29-brightgreen.svg?style=flat)](http://www.gnu.org/licenses/gpl-2.0.html)[![Travis-CI Build Status](https://travis-ci.org/drknexus/mcparallelDo.svg?branch=master)](https://travis-ci.org/drknexus/mcparallelDo)[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/mcparallelDo)](http://cran.r-project.org/package=mcparallelDo)
A Simplified Interface for Running Commands on Parallel Processes.

`mcparallelDo` wraps mcparallel() and mccollect() from 'parallel' with temporary variables and a task handler.  Wrapped in this way the results of an mcparallel() call can be returned to the R session when the fork is complete without explicitly issuing a specific mccollect() to retrieve the value. Outside of top-level tasks, multiple mcparallel() jobs can be retrieved with a single call to mcparallelDoCheck().

**NOTE:** Given that Windows does not support parallalism through forks, the R base functions `mcparallel` and `mccollect` do not work.  Therefore, although `mcparallelDo` will work on windows and pass through commands to be evaluated, it has no meaningful effect on Windows.

# Dependencies 

* parallel (for forking functions)
* R.utils (for temporary variables)
* ArgumentCheck (for argument checking
* R6 (for the management object that keeps track of jobs)

# Getting Started
The package should install from source like any other R package.

# Status
The package works well, is used in production, and has been on CRAN continuously since 2015-12-09. All issues related to desirable additional functionality. Pull requests, bug reports, and other contributions are welcome.

# Author

Russell S. Pierce  

# License

GPL (>= 2)
