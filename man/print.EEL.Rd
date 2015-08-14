\name{print.EEL}
\alias{print.EEL}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Printing EEL objects
}
\description{
The function prints the extended empirical log likelihood ratio.
}
\usage{
\method{print}{EEL}(x,...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
EEL object.
}
\item{...}{
Further arguments passed to or from other methods.
}
}

\value{
The function prints the extended empirical log likelihood ratio value of the EEL object.
}

\author{
Yu Zhang
}

\seealso{
\code{\link{EEL}}
}
\examples{
# EXAMPLE: computing the EEL for the mean of a bivariate random variable
# Generating a sample of n=40 bivariate observations. 
# For this example, we do this through a univariate normal random number generator.

uninorm<- rnorm(40*2,5,1)                          
multnorm<-matrix(uninorm,ncol=2)

# To calculate the EEL for a point theta=c(5,3), use
obj=EEL(x=multnorm,theta=c(5,3))

print(obj)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ printing }
\keyword{ EEL }% __ONLY ONE__ keyword per line
