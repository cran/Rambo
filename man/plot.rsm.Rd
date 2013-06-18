\name{plot.rsm}
\alias{plot.rsm}
\title{
Plot an object from class rsm
}
\description{
Produces plots describing results of an object from class rsm. 
}
\usage{
\method{plot}{rsm}(x, frame=0, ...)
}
\arguments{
  \item{x}{
  An object of class rsm. Result of function rsm.  
  }
  \item{frame}{
  An integer with possible values 0, 1, or 2, depending on the kind of graphics requested (see \code{details}).
  }
  \item{...}{
  Arguments to be passed to the function, such as graphical parameters.
  }
}
\details{

\itemize{
\item if \code{frame=0} plot of the lower bound criterion versus the number of clusters and repartition of the found cluster in the different subgraphs. 

\item if \code{frame=1} plot of the lower bound criterion versus the number of clusters.

\item if \code{frame=2} repartition of found clusters in the different subgraphs.

}
}
\seealso{
\code{\link{rsm}}, \code{\link{summary.rsm}}, \code{\link{RAMBO}}
}
\examples{
data(Regions)
res <- rsm(Regions$X, Regions$sub, Klist=2:4, nbredo=1, maxit=5) 
##plot(res, frame=0)
## plot(res, frame=1)
 plot(res, frame=2)
}
