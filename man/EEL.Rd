\name{EEL}
\alias{EEL}
\alias{EEL.default}
\title{Extended empirical log likelihood ratio for the mean}
\description{Calculate the extended empirical log likelihood ratio for a multi-dimensional mean}
\usage{
EEL(x, theta)
\method{EEL}{default}(x,theta)
}

\arguments{
  \item{x}{ Data matrix.}
  \item{theta}{ The value at which the extended empirical likelihood is to be evaluated. }
}

\value{
An object of class \code{EEL}, basically a list including elements
\item{theta}{ the value at which the extended empirical likelihood is to be evaluated;}
\item{prime}{ the prime-image inside the convex hull for the point theta;}
\item{estimating equation}{ the estimating equation here is "x-theta";}
\item{expansion}{ the value of the expansion factor gamma;}
\item{oel_log}{ the original empirical log likelihood ratio value;}
\item{eel_log}{ the extended empirical log likelihood ratio value.}
}

\author{Yu Zhang & Fan Wu}

\seealso{
\code{\link{EMLogLR}}, \code{\link{exp_factor}}, \code{\link{prime_image}}, \code{\link{print.EEL}}, \code{\link{summary.EEL}}, \code{\link{EEL_est}}
}

\examples{
# EXAMPLE: computing the EEL for the mean of a bivariate random variable
# Generating a sample of n=40 bivariate observations. 
# For this example, we do this through a univariate normal random number generator.

uninorm<- rnorm(40*2,5,1)                          
multnorm<-matrix(uninorm,ncol=2)

# To calculate the EEL for a point theta=c(5,3), use
EEL(x=multnorm,theta=c(5,3))

}


\keyword{ Empirical }
\keyword{ nonparametric }
