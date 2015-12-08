context("basic tests")
test_that("in global functionality",{
          mcparallelDo({2+2}, targetValue = "output")
          Sys.sleep(1)
          x <- 1+1
          expect_equal(get("output", envir = .GlobalEnv), 4)
  }
)

test_that("in parent.frame functionality",{
          mcparallelDo({2+2}, targetValue = "output", targetEnvironment = parent.frame())
          Sys.sleep(1)
          x <- 1+1
          expect_equal(get("output", envir = parent.frame()), 4)
  }
)
