\name{summary.EEL}
\alias{summary.EEL}

\title{
Summarizing EEL objects
}
\description{
The function prints a summary of EEL objects.
}
\usage{
\method{summary}{EEL}(object,...)
}

\arguments{
  \item{object}{
An EEL object.
}
 \item{...}{
 Additional arguments affecting the summary produced.
 }
}

\value{
The function prints a summary of EEL objects including
\item{theta }{ the point at which the EEL is to be evaluated;}
\item{estimating equation}{ the estimating equation at which the paremeters are defined;}
\item{log oel ratio }{ empirical log likelihood ratio for the point theta;}
\item{prime image}{ prime-image of theta defined by the similarity mapping in EEL calculation;}
\item{expansion factor}{ value of the expansion factor \deqn{\gamma(x,\theta)}{gamma(x,theta)};}
\item{log eel ratio}{ value of the extended empirical log likelihood ratio.}
}

\author{
Yu Zhang
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{EEL}},\code{\link{print.EEL}}, \code{\link{EEL_est}}
}
\examples{
# EXAMPLE: computing the EEL for the mean of a bivariate random variable
# Generating a sample of n=40 bivariate observations. 
# For this example, we do this through a univariate normal random number generator.

uninorm<- rnorm(40*2,5,1)                          
multnorm<-matrix(uninorm,ncol=2)

# To calculate the EEL for a point theta=c(5,3), use
obj=EEL(x=multnorm,theta=c(5,3))

summary(obj)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ summary }
\keyword{ EEL }% __ONLY ONE__ keyword per line
