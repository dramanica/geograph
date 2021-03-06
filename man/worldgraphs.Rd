\encoding{UTF-8}
\name{worldgraph}
\alias{worldgraph}
\alias{rawgraph.10k}
\alias{rawgraph.40k}
\alias{worldgraph.10k}
\alias{worldgraph.40k}
\alias{globalcoord.10k}
\alias{globalcoord.40k}
\alias{worldshape}
\docType{data}
\title{Worldwide geographic graphs}
\description{
  The datasets 'rawgraph.10k', 'rawgraph.40k', 'worldgraph.10k', and
  'worldgraph.40k' are geographic graphs (\linkS4class{gGraph} objects) of
  the world, with respective resolutions of 10,242 and 40,962 vertices.\cr

  'rawgraph's are raw graphs as obtained directly from the method
  provided in references.\cr

  'worldgraph's are 'rawgraph's that have been modified manually to recitify
  connectivity between edges at some places. The most noticable change
  is that all edges oversea have been removed.\cr

  'globalcoord.10k' and 'globalcoord.40k' are matrices of geographic
  coordinates of nodes, used to construct 'worlgraph' objects.\cr
  
  'worldshape' is a shapefile of contries of the world (snapshot from 1994).
}
\usage{
data(rawgraph.10k)
data(rawgraph.40k)
data(worldgraph.10k)
data(worldgraph.40k)
data(globalcoord.10k)
data(globalcoord.40k)
data(worldshape)
}
\format{
  \code{worldgraph.10k} and \code{worldgraph.40k} are
  \linkS4class{gGraph} objects with the following specificities:
  \describe{
    \item{@nodes.attr\$habitat}{habitat corresponding to each
      vertice; currently 'land' or 'sea'.}
    \item{@meta\$color}{a matrix assigning a color for plotting
      vertices (second column) to different values of habitat (first
      column).}	
  }
}
\references{
  === On the construction of the graph ===\cr
  Randall, D. A.; Ringler, T. D.; Heikes, R. P.; Jones, P. & Baumgardner, J. Climate Modeling with Spherical Geodesic Grids \emph{Computing in science & engineering}, 2002, \bold{4}: 32-41.
}
\source{
 Graph reconstructed by Andrea Manica.
}
\examples{

worldgraph.10k

## plotting the object
plot(worldgraph.10k, reset=TRUE)
title("Hello world")

## zooming in
geo.zoomin(list(x=c(-12,45), y=c(33,75)))
title("Europe")
geo.zoomin(list(x=c(-12,2), y=c(50,60)))
plotEdges(worldgraph.10k)
title("United Kingdom")

## zooming out
# geo.zoomout() # needs clicking on device
geo.zoomin(list(x=c(-6,38), y=c(35,73)))
title("Europe")

## defining the subset of visible points
x <- worldgraph.10k[isInArea(worldgraph.10k)] 
plot(x,reset=TRUE, edges=TRUE)
title("One subsetted object.")

\dontrun{
## interactive zooming
geo.zoomin()
}

}
\keyword{datasets}
