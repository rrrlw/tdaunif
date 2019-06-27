% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/planar-triangles.r
\name{planar-triangles}
\alias{planar-triangles}
\alias{sample_planar_triangle}
\title{Sample from planar triangles}
\usage{
sample_planar_triangle(n, triangle)
}
\arguments{
\item{n}{Number of observations.}

\item{triangle}{The (x,y) coordinates of the vertices of a triangle,
formatted in a 2x3 matrix}
}
\description{
These functions generate uniform samples from configurations of
planar triangles in 2-dimensional space.
}
\details{
(Details.)
}
\examples{
#Uniformly sampled equilateral planar triangle in 2-space
equilateral_triangle <- cbind(c(0,0), c(0.5,sqrt(3)/2), c(1,0))
x <-  sample_planar_triangle(1800, equilateral_triangle)
plot(x, asp = 1, pch = 19, cex = .5)
}
\references{
J Arvo (2001) Stratified Sampling of 2-Manifolds. \emph{SIGRAPH 2001 (State of the
Art in Monte Carlo Ray Tracing for Realistic Image Synthesis)}, Course Notes,
Vol. 29. \url{http://www.cs.virginia.edu/~jdl/bib/globillum/arvo01_notes.pdf}
}