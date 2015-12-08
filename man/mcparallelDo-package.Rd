\name{mcparallelDo-package}
\alias{mcparallelDo-package}
\docType{package}
\title{
\packageTitle{mcparallelDo}
}
\description{
\packageDescription{mcparallelDo}
}
\details{

The DESCRIPTION file:
\packageDESCRIPTION{mcparallelDo}
\packageIndices{mcparallelDo}
The primary function of this package is mcparallelDo.  
To use mcparallelDo, simply invoke the function with a curly braced wrapped code
and the character element name to which you want to assign the results.
}
\author{
\packageAuthor{mcparallelDo}

Maintainer: \packageMaintainer{mcparallelDo}
}

\keyword{ package }
\keyword{ misc }
\examples{
# mcparallelDo example
## Create data
data(ToothGrowth)
## Trigger mcparallelDo to perform analysis on a fork
mcparallelDo({glm(len ~ supp * dose, data=ToothGrowth)},"interactionPredictorModel")
## Do other things
binaryPredictorModel <- glm(len ~ supp, data=ToothGrowth)
gaussianPredictorModel <- glm(len ~ dose, data=ToothGrowth)
## The result from mcparallelDo returns in your targetEnvironment, 
## e.g. .GlobalEnv, when it is complete with a message (by default)
summary(interactionPredictorModel)
}
