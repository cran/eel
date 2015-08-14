\name{EMLogLR}
\alias{EMLogLR}
\alias{EMLogLR.default}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Original empirical log likelihood ratio
}
\description{
The function extracts the empirical log likelihood ratio value produced by el.test() function from package "emplik".
}
\usage{
EMLogLR(x, mean)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ Data matrix.
}
  \item{mean}{
The mean value to be evaluated.
}
}

\value{
The function will return a numerical value representing the original empirical log likelihood ratio.

}

\author{
Yu Zhang & Fan Wu
}



\seealso{
\code{\link{EEL}}
}
\examples{
x=rnorm(50,0,1)
# find the empirical log likelihood ratio at point 0
EMLogLR(x,0)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.

