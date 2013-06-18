\name{Rambo-package}
\alias{Rambo-package}
\alias{Rambo}
\alias{RAMBO}
\docType{package}
\title{
The Random Subgraph Model
}
\description{
Partition the vertices of a directed network with typed edges into clusters describing the connection patterns of subgraphs given as inputs.  
The inference is performed using a variational Bayes EM algorithm and the estimation of the number of clusters is obtained through a variational approximation of the marginal log likelihood.
}
\details{
\tabular{ll}{
Package: \tab Rambo\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-06-18\cr
License: \tab GPL (>=2.0)\cr
}
}
\author{
Yacine Jernite, Laetitia Nouedoui, Charles Bouveyron, Pierre Latouche.
Maintainer: Who to complain to <yourfault@somewhere.net>
}
\references{
Yacine Jernite, Pierre Latouche, Charles Bouveyron, Patrick Rivera, Laurent Jegou
and Stephane Lamasse(2012), The Random Subgraph Model for the Analysis of an Ecclesiastical Network in Merovingian Gaul, http://arxiv.org/abs/1212.5497
}
\keyword{rsm}
\seealso{
\code{\link{rsm}}, \code{\link{summary.rsm}}, \code{\link{plot.rsm}}
}
\examples{
data(Regions)
res <- rsm(Regions$X, Regions$sub, Klist=2:4, nbredo=1, maxit=5) 
plot(res)
## summary(res)
}
