% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nlar-methods.R
\name{nlar-methods}
\alias{nlar-methods}
\alias{coef.nlar}
\alias{fitted.nlar}
\alias{residuals.nlar}
\alias{deviance.nlar}
\alias{mse.nlar}
\alias{AIC.nlar}
\alias{BIC.nlar}
\alias{MAPE.nlar}
\alias{summary.nlar}
\alias{plot.nlar}
\alias{toLatex.nlar}
\title{NLAR methods}
\usage{
\method{coef}{nlar}(object, ...)

\method{fitted}{nlar}(object, ...)

\method{residuals}{nlar}(object, initVal = TRUE, timeAttr = TRUE, ...)

\method{deviance}{nlar}(object, ...)

\method{mse}{nlar}(object, ...)

\method{AIC}{nlar}(object, k = 2, ...)

\method{BIC}{nlar}(object, ...)

\method{MAPE}{nlar}(object, ...)

\method{summary}{nlar}(object, ...)

\method{plot}{nlar}(x, ask = interactive(), ...)

\method{toLatex}{nlar}(object, digits, label, ...)
}
\arguments{
\item{\dots}{further arguments to be passed to and from other methods}

\item{initVal}{Whether to return NA for initial values in residuals/predicitons etc}

\item{timeAttr}{Whether the time attributes should be returned in the output}

\item{k}{numeric, the penalty per parameter to be used for AIC/BIC; the default k = 2 is
the classical AIC}

\item{x, object}{fitted \sQuote{nlar} object}

\item{ask}{graphical option. See \code{\link{par}}}

\item{digits}{For print method, see \code{\link{printCoefmat}}.}

\item{label}{LaTeX label passed to the equation}
}
\description{
Generic \sQuote{nlar} methods. Method \sQuote{nlar} is described in a
separate page: \code{\link{nlar}}
}
\details{
\describe{ 
  \item{MAPE}{ Mean Absolute Percent Error } 
  \item{mse}{ Mean Square Error } 
  \item{plot}{ Diagnostic plots } }
}
\examples{

x <- log10(lynx)
mod.setar <- setar(x, m=2, thDelay=1, th=3.25)
mod.setar
AIC(mod.setar)
mse(mod.setar)
MAPE(mod.setar)
coef(mod.setar)
summary(mod.setar)

e <- residuals(mod.setar)
e <- e[!is.na(e)]
plot(e)
acf(e)

plot(x)
lines(fitted(mod.setar), lty=2)
legend(x=1910, y=3.9,lty=c(1,2), legend=c("observed","fitted"))

plot(mod.setar)

}
\seealso{
\code{\link{availableModels}} for listing all currently available
models.
}
\author{
Antonio, Fabio Di Narzo
}
\keyword{ts}
