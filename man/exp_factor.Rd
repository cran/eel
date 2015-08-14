\name{exp_factor}
\alias{exp_factor}
\alias{exp_factor.default}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculating expansion factor for EEL for the mean
}
\description{
The function calculates the first order expansion factor of EEL for the mean.
}
\usage{
exp_factor(x, theta)
\method{exp_factor}{default}(x,theta)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
Data matrix of interest.
}
  \item{theta}{
The value to be evaluated.
}
  
}

\details{
The first order expansion factor for calculating EEL is defined as
\deqn{\gamma(n,l(\theta))=1+\frac{l(\theta)}{2n}.}{r(n,l(theta))=1+l(theta)/2n.}
}

\value{
The function will return a numerical value representing the value of the expansion factor calculated.
}

\references{
Tsao, M. (2013). Extending the empirical likelihood by domain expansion. The
Canadian Journal of Statistics, 41 (2), 257-274.
}

\author{
Fan Wu & Yu Zhang
}

\seealso{
\code{\link{EEL}}, \code{\link{prime_image}}, \code{\link{exp_factor_est}}
}
\examples{
x=rnorm(400,0,3)
exp_factor(x,0)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ mapping }
\keyword{ expansion }% __ONLY ONE__ keyword per line
