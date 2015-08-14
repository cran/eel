\name{prime_image}
\alias{prime_image}
\alias{prime_image.default}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculating prime-image based on similarity mapping for the mean
}
\description{
The function calculates the prime image of the given point based on the similarity mapping defined in the EEL calculaiton.
}
\usage{
prime_image(theta_tilda, theta, x)
\method{prime_image}{default}(theta_tilda,theta,x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{theta_tilda}{
Sample mean or the maximum empirical likelihood estimate of the estimating equaitons.
}
  \item{theta}{
Value to be evaluated.
}
  \item{x}{
Data matrix.
}
}
\details{
The prime image was found by solving the equation \deqn{f(\zeta'')=\zeta'.}{f(zeta'')=zeta'.} See the reference paper for details.
}

\value{
The function returns a vector, with the same length as the mean, representing the prime image of the point theta, based on the similarity mapping defind in EEL calculation.
}
\references{
Tsao, M. (2013). Extending the empirical likelihood by domain expansion. The Canadian Journal of Statistics, 41 (2), 257-274.

Tsao, M., & Wu, F. (2013). Empirical likelihood on the full parameter space. Annals of Statistics, 0 (00), 1-21. doi: 10.1214/13-AOS1143
}
\author{
Fan Wu and Yu Zhang
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{EEL}},\code{\link{exp_factor}},\code{\link{eel-package}},\code{\link{prime_image_est}}
}
\examples{
x=rnorm(50,6,2)
# find the prime image of true mean
prime_image(theta_tilda=mean(x),theta=6,x=x)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ mapping }
\keyword{ image }% __ONLY ONE__ keyword per line
