\name{rsm}
\alias{rsm}
\title{
The Random Subgraph Model
}
\description{
Partition the vertices of a directed network with typed edges into clusters describing the connection patterns of subgraphs given as inputs.  
The inference is performed using a variational Bayes EM algorithm and the estimation of the number of clusters is obtained through a variational approximation of the marginal log likelihood.}
\usage{
rsm(X, sub, Klist, nbredo = 5, disp = F, maxit = 50)
}
\arguments{
  \item{X}{
an adjacency matrix with oriented and typed edges.
}
  \item{sub}{
a vector indicating the subgraph in which each vertex belongs.
}
  \item{Klist}{
a vector indicating the range of possible values for the number of latent clusters; must be at least 2.
}
  \item{nbredo}{
number of initializations to be made;  to avoid local optimum during variational Bayes EM algorithm. 
}
  \item{disp}{
  logical; if TRUE, display comments during the estimation. 
}
  \item{maxit}{
  maximum number of iterations for the algorithm.
}
}
\details{
\code{rsm} implements the variational Bayes EM algorithm for the random subgraph model (RSM) as proposed by Jernite et al.(2012). 
The function takes a directed network with typed edges along with a decomposition of the network into known subgraphs as inputs. 

The RSM model assumes that the presence of an edge between two vertices depends on the subgraphs they belong to. If an edge is present, its type is then assumed to be sampled from a multinomial distribution, depending on latent clusters. In practice, 
the subgraphs are known and given as inputs while the clusters have to be infered from the data. The clustering of the vertices is performed using a variational Bayes algorithm and the number of clusters is obtained with a model selection criterion which is a variational approximation of the marginal log likelihood.

The algorithm is runned for various values of the number of clusters (Klist). For each value of K in Klist, the algorithm is initialized \code{nbredo} times. 

Assuming that the number of clusters is K, \code{output[[K]]$lower} represents the lower bound of the marginal log likelihood. \code{output[[K]]$Pi} contains the cluster connectivity. Each element of the K*K matrix is a vector of probability of C elements. Hence, \code{output[[K]]$Pi} is an array of size K*K*C. 

In order to have a better chance of reaching a global optimum, VBEM is run for several initializations of a kmeans like algorithm (by default, \code{nbredo = 5}). 
}
\value{
Returns a list including:
\item{N}{Number of vertices of the network}
\item{R}{Number of subgraphs}
\item{C}{Number of edges types}
\item{Klist}{vector indicating the range of possible values for the number of latent cluster; must be greater or equal to 2}
\item{X}{an adjacency matrix with oriented and typed edges.}
\item{K_star}{the number of clusters estimated.}
\item{gama}{matrix of size R*R containing the probabilities of connection between subgraphs.}
\item{output}{output list of \code{length(Klist)} + 1 items. Each item contains the result of the estimation for a given number of class K. Details of output field:}
\item{output[[K]]$lower}{lower bound of the marginal log likelihood.}
\item{output[[K]]$alpha}{matrix of size R*K containing the posterior proportions of each cluster in subgraphs.}
\item{output[[K]]$Pi}{array of size K*K*C containing the cluster connectivity. Each element of the K*K matrix is a vector of C elements.}
\item{output[[K]]$Tau}{matrix of posterior probabilities (estimated probabilies for each vertex to belong to the different clusters.}
\item{output[[K]]$Zcol}{vector indicating the cluster of each vertex (MAP estimate).}

}
\references{
Yacine Jernite, Pierre Latouche, Charles Bouveyron, Patrick Rivera, Laurent Jegou
and Stephane Lamasse(2012), The Random Subgraph Model for the Analysis of an Ecclesiastical Network in Merovingian Gaul, http://arxiv.org/abs/1212.5497
}
\author{
Yacine Jernite, Laetitia Nouedoui, Charles Bouveyron, Pierre Latouche.
}
\seealso{
\code{\link{summary.rsm}}, \code{\link{plot.rsm}}
}
\examples{
data(Regions)
res <- rsm(Regions$X, Regions$sub, Klist=2:4, nbredo=1, maxit=5) 
plot(res)
summary(res)
}
\keyword{subgraph}
\keyword{rsm}
