\name{Regions}
\alias{Regions}
\docType{data}
\title{
A simulated network with subgraphs and typed edges
}
\description{The \code{Regions} data is a simulated network generated according to the Random Subgraph Model. The network is directed with 30 nodes; Vertices are known to belong to 2 subgraphs. Edges of this network are typed, with 3 kinds of links.
}
\usage{data(Regions)}
\format{A list which contains the discrete adjacency matrix (X) of the network and a vector indicating the subgraph belongings of the nodes (sub).}
\references{
Yacine Jernite, Pierre Latouche, Charles Bouveyron, Patrick Rivera, Laurent Jegou
and Stephane Lamasse(2012), The Random Subgraph Model for the Analysis of an Ecclesiastical Network in Merovingian Gaul, http://arxiv.org/abs/1212.5497
}
\examples{
data(Regions)
res <- rsm(Regions$X, Regions$sub, Klist=2:4, nbredo=1, maxit=5) 
plot(res)
}
\keyword{rsm}
\keyword{subgraph}
\keyword{Regions}
