\name{prime_image_est}
\alias{prime_image_est}
\alias{prime_image_est.default}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculating prime-image based on similarity mapping for parameters defined by estimating equations
}
\description{
The function calculates the prime image of a given point based on the similarity mapping defined in the EEL calculaiton.
}
\usage{
prime_image_est(theta_tilda, theta, x, equation)
\method{prime_image_est}{default}(theta_tilda, theta, x, equation)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{theta_tilda}{
The maximum empirical likelihood estimates for parameters defined by estimating equations.
}
  \item{theta}{
The value to be evaluated.
}
  \item{x}{
Data Matrix.
}
  \item{equation}{
The estimating equation by which the parameters are defined, must be put as a function of theta.
}
}
\details{
The prime image was found by solving the equation \deqn{f(\zeta'')=\zeta'.}{f(zeta'')=zeta'.} See the reference paper for details.
}
\value{
The function returns a vector, with the same dimension as the mean, representing the prime image of the point theta, based on the similarity mapping defind in EEL calculation.
}
\references{
Tsao, M. (2013). Extending the empirical likelihood by domain expansion. The Canadian Journal of Statistics, 41 (2), 257-274.

Tsao, M., & Wu, F. (2013). Empirical likelihood on the full parameter space. Annals of Statistics, 0 (00), 1-21. doi: 10.1214/13-AOS1143
}
\author{
Yu Zhang
}

\seealso{
\code{\link{EEL}},\code{\link{exp_factor_est}},\code{\link{EEL_est}},\code{\link{prime_image}}
}
\examples{
x=rnorm(50,6,2)
# find the prime image of true mean
prime_image_est(theta_tilda=mean(x),theta=6,x=x,"x-theta")


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ image }
\keyword{ EEL }% __ONLY ONE__ keyword per line
