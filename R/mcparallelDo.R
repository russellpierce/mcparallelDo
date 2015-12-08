#' jobCompleteDestructingHandler
#'
#' Creates a callback handler function that can be added via addTaskCallback.
#' These functions run at the end of each completed R statement.
#' This particular handler watches for the completion of the target job (created via mcparallel)
#' @param targetJob (character) Name of the mcparallel job variable that is waiting for a result
#' @param targetValue A character element indicating the variable that the result of that job should be assigned to targetEnvironment
#' @param verbose A boolean element; if TRUE the completion of the fork expr will be accompanied by a message
#' @param targetEnvironment The environment in which you want targetValue to be created
#'
#' @return callback handler function

jobCompleteSelfDestructingHandler <- function(targetJob, targetValue, verbose, targetEnvironment) {
    return(
      function(expr, value, ok, visible) {
        jobResult <- parallel::mccollect(get(targetJob), wait=FALSE)
        if(is.null(jobResult)) {
          return(TRUE)
        } else {
          rm(list = targetJob, envir = targetEnvironment)
          assign(targetValue, jobResult[[1]], envir = targetEnvironment)
          if (verbose) message(targetValue, " has a new value")
          return(FALSE)
        }
      return(TRUE)
    }
  )
}
NULL

#' mcparallelDo
#'
#' This function creates a fork, evaluates a segment of code evaluated in the fork, and the result 
#' of the fork returned in a variable named targetValue in the targetEnvironment.
#' If there is an error in the code, the returned variable will be a try-error.
#' These effects are accomplished via the automatic creation and destruction of a taskCallback.  So, the result in targetValue will only occur after some other R command is issued.
#' 
#' @param code The code to evaluate within a fork wrapped in {}
#' @param targetValue A character element indicating the variable that the result of that job should be assigned to targetEnvironment
#' @param verbose A boolean element; if TRUE the completion of the fork expr will be accompanied by a message
#' @param targetEnvironment The environment in which you want targetValue to be created
#'
#' @return NULL
#'
#' @examples
#' ## Create data
#' data(ToothGrowth)
#' ## Trigger mcparallelDo to perform analysis on a fork
#' mcparallelDo({glm(len ~ supp * dose, data=ToothGrowth)},"interactionPredictorModel")
#' ## Do other things
#' binaryPredictorModel <- glm(len ~ supp, data=ToothGrowth)
#' gaussianPredictorModel <- glm(len ~ dose, data=ToothGrowth)
#' ## The result from mcparallelDo returns in your targetEnvironment, 
#' ## e.g. .GlobalEnv, when it is complete with a message (by default)
#' summary(interactionPredictorModel)
#' @importFrom ArgumentCheck addError finishArgCheck
#' @importFrom R.utils tempvar
#' @export
mcparallelDo <- function(code, targetValue, verbose = TRUE, targetEnvironment = .GlobalEnv) {
  Check <- ArgumentCheck::newArgCheck()
  if (!is.character(targetValue)) {
    ArgumentCheck::addError(
      msg = "targetValue must be a character",
      argcheck = Check
    )
  }
  if (length(targetValue) != 1) {
    ArgumentCheck::addError(
      msg = "targetValue must be a single element",
      argcheck = Check
    )
  }
  if (!is.environment(targetEnvironment)) {
    ArgumentCheck::addError(
      msg = "targetEnvironment must be an environment",
      argcheck = Check
    )
  }
  ArgumentCheck::finishArgCheck(Check)
  
  jobName <- R.utils::tempvar(".mcparallelDoJob", 
                              value = parallel::mcparallel({try(code)}),
                              envir = targetEnvironment)
  addTaskCallback(jobCompleteSelfDestructingHandler(jobName, targetValue, verbose, targetEnvironment))
  return(NULL)
}
NULL