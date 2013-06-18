\name{summary.rsm}
\alias{summary.rsm}
\title{
Summarizes results of Random Subgraph Model estimates. 
}
\description{
Returns a summary of rsm function results.  
}
\usage{
\method{summary}{rsm}(object,...)
}
\arguments{
  \item{object}{An object of class rsm. This is assumed to be the result of function rsm.}
  \item{...}{Additional options for the summary function.} 
}
\seealso{
\code{\link{rsm}}, \code{\link{plot.rsm}}
}
\examples{
data(Regions)
res <- rsm(Regions$X, Regions$sub, Klist=2:4, nbredo=1, maxit=5) 
summary(res)
}
\keyword{rsm}
