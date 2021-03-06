\encoding{UTF-8}
\name{setDistCosts}
\alias{setDistCosts}
\alias{setDistCosts-methods}
\alias{setDistCosts,gGraph-method}
\title{Set costs associated to edges based on geographic distances}
\description{
  The function \code{setDistCosts} sets the costs of a
  \linkS4class{gGraph} object using the geographic distance. The cost
  associated to an edge is defined as the great circle distance between
  the two nodes of this edge. \code{setDistCosts} actually relies on
  \code{\link[fields]{rdist.earth}} of the \code{fields} package.
}
\usage{
setDistCosts(x, \dots)
\S4method{setDistCosts}{gGraph}(x, \dots)
}
\arguments{
  \item{x}{a valid \linkS4class{gGraph}.}
  \item{\dots}{other arguments passed to other methods (currently
    unused).}
}
\details{
  The notion of 'costs' in the context of \linkS4class{gGraph} objects is
  identical to the concept of 'weights' in \linkS4class{graph} (and thus
  \linkS4class{graphNEL}) objects. The larger it is for an edge, the
  less connectivity there is between the couple of concerned nodes.
}
\value{
  For the \linkS4class{gGraph} method, a \linkS4class{gGraph} object
  with appropriate weights. Note that former weights will be removed
  from the object.
}
\seealso{
  The \code{\link{getCosts}} accessor, returning costs of the edges of a
  \linkS4class{gGraph} object in different ways.\cr
}
\author{Thibaut Jombart (\email{t.jombart@imperial.ac.uk})}
\examples{
if(require(fields)){
## load data
plot(rawgraph.10k,reset=TRUE)
geo.zoomin(list(x=c(110,150),y=c(-10,-40)))
plotEdges(rawgraph.10k)

## compute costs
x <- rawgraph.10k[isInArea(rawgraph.10k)]
x <- setDistCosts(x)

## replot edges
plotEdges(x) # no big differences can be seen
head(getCosts(x))
}
}
\keyword{utilities}
\keyword{methods}
