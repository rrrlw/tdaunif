% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tdaunif.r
\docType{package}
\name{tdaunif}
\alias{tdaunif}
\title{\strong{tdaunif}: Uniform manifold samplers for topological data analysis}
\description{
Generate uniform random samples from embedded manifolds,
optionally with noise.
}
\details{
This package assembles functions that generate samples of points uniformly
from the surfaces of embedded manifolds. An \emph{embedding} is a one-to-one
continuous map \eqn{f:M\to Z} from a manifold \eqn{M} to a Euclidean
coordinate space \eqn{Z}, and each function relies on a \emph{parameterization} of
\eqn{M} given by a continuous bijective function \eqn{p:X\to f(M)} that may
identify some points of \eqn{X} (boundary or interior) to produce the
topology of \eqn{M}. (This means that the inverse of \eqn{p} may not be
continuous.)

Sampling points \eqn{S} uniformly from \eqn{X} and mapping the sample to
\eqn{f(M)} will produce a non-uniform sample \eqn{p(S)} due to differences in
the local sampling rate per unit interior (length, area, volume, etc.),
quantified as the Jacobian (higher-order derivative) of \eqn{p}. \strong{tdaunif}
uses two techniques to correct for this:
\itemize{
\item The more numerical (brute-force) technique is to compute the Jacobian on
the parameter space and oversample locally at a rate proportional to the
Jacobian. This oversampling is done via rejection sampling as illustrated by
Diaconis, Holmes, and Shahshahani (2013).
\item The more analytic technique is to invert the Jacobian symbolically in order
to define an interior-preserving parameterization \eqn{q:X\to f(M)}, as
illustrated for 2-manifolds by Arvo (2001). Sampling \eqn{S} uniformly on
\eqn{X} then produces a uniform sample \eqn{q(S)} on \eqn{f(M)}. The
interior-preserving map also enables stratified sampling on the manifold via
stratification of the parameter space.
}

Multivariate Gaussian noise in the coordinate space can be added to any
sample.
}
\references{
J Arvo (2001) Stratified Sampling of 2-Manifolds. \emph{SIGRAPH 2001 (State of the
Art in Monte Carlo Ray Tracing for Realistic Image Synthesis)}, Course Notes,
Vol. 29. \url{http://www.cs.virginia.edu/~jdl/bib/globillum/arvo01_notes.pdf}

P Diaconis, S Holmes, and M Shahshahani (2013) Sampling from a Manifold.
\emph{Advances in Modern Statistical Theory and Applications: A Festschrift in
honor of Morris L. Eaton}, 102--125. \doi{10.1214/12-IMSCOLL1006}
}
\author{
Jason Cory Brunson

Brandon Demkowicz

Sanmati Choudhary
}
