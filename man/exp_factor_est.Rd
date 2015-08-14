\name{exp_factor_est}
\alias{exp_factor_est}
\alias{exp_factor_est.default}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculating expansion factor for EEL for parameters defined by estimating equations
}
\description{
The function calculates the first order expansion factor of EEL for the parameters defined by estimating equations.
}
\usage{
exp_factor_est(x, theta, equation)
\method{exp_factor_est}{default}(x,theta,equation)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
Data Matrix.
}
  \item{theta}{
The value to be evaluated.
}
  \item{equation}{
The estimating equation by which the parameters are defined.
}
}
\details{
The first order expansion factor for calculating EEL is defined as
\deqn{\gamma(n,l(\theta))=1+\frac{l(\theta)}{2n}.}{r(n,l(theta))=1+l(theta)/2n.}

The estimating equation input has to be a function of theta.
}
\value{
The function will return a numerical value representing the value of the expansion factor calculated.
}
\references{
Tsao, M. (2013). Extending the empirical likelihood by domain expansion. The
Canadian Journal of Statistics, 41 (2), 257-274.
}
\author{
Yu Zhang and Fan Wu
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{eel-package}}, \code{\link{exp_factor}}, \code{\link{EEL_est}}, \code{\link{prime_image_est}}
}
\examples{
#generate data with theoretical mean 2 and standard deviation 1
x=rnorm(100,2,1)
exp_factor_est(x=x, theta=2, equation="x-theta")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ EEL }
% _ONLY ONE__ keyword per line
