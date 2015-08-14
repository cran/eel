\name{EEL_est}
\alias{EEL_est}
\alias{EEL_est.default}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Extended empirical log likelihood ratio for parameters defined by estimating equaitons
}
\description{
Calculate the extended empirical log likelihood ratio for parameters defined by estimating equations
}
\usage{
EEL_est(x, theta, theta_tilda, equation)
\method{EEL_est}{default}(x, theta, theta_tilda, equation)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
Data matrix.
}
  \item{theta}{
Value at which the EEL for the parameters defined by estimating equations will be evaluated.
}
  \item{theta_tilda}{
The maximum empirical likelihood estimator of the unknown parameter.
}
  \item{equation}{
The estimating equation, must be put inside quotation marks and has to be a function of theta. 
}
}

\value{
An object of class \code{EEL}, basically a list including elements
\item{theta}{ value at which the EEL for the parameters defined by estimating equations will be evaluated;}
\item{prime}{ the prime-image inside the convex hull for the point theta;}
\item{estimating equation}{ the estimating equation;}
\item{expansion}{ the value of the expansion factor gamma;}
\item{oel_log}{ the original empirical log likelihood ratio value;}
\item{eel_log}{ the extended empirical log likelihood ratio value.}
}

\author{
Yu Zhang
}

\seealso{
\code{\link{EMLogLR}},\code{\link{exp_factor_est}},\code{\link{prime_image_est}},\code{\link{print.EEL}},\code{\link{summary.EEL}},\code{\link{eel-package}}, \code{\link{EEL}}
}
\examples{
# EXAMPLE: computing the EEL for the mean of a bivariate random variable
# Generating a sample of n=40 bivariate observations. 
# For this example, we do this through a univariate normal random number generator.

uninorm<- rnorm(40*2,5,1)                          
multnorm<-matrix(uninorm,ncol=2)

# To calculate the EEL for a point theta=c(5,3), use
theta_tilda=colMeans(multnorm-as.vector(c(5,3)))
EEL_est(x=multnorm,theta=c(5,3),theta_tilda, "x-theta")

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ EEL }
\keyword{ Estimating }% __ONLY ONE__ keyword per line
