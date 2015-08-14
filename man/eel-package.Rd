\name{eel-package}
\alias{eel-package}
\docType{package}
\title{
\packageTitle{eel}
}
\description{
\packageDescription{eel}
}
\details{

The DESCRIPTION file:
\packageDESCRIPTION{This is a package for computing the extended empirical log likelihood ratio for the mean and parameters defined by estimating equations based on first order similarity mapping.}
\packageIndices{eel}
The extended empirical log likelihood ratio for the mean is computed by calling the function EEL(), and that for the parameter defined estimating equations is computed by calling the function EEL_est(). This package requires pre-installation of two packages "emplik" and "rootSolve". These are needed for computing the prime image of a point theta as well as the final extended empirical log likelihood ratio value as described in Tsao and Wu (2013, 2014). Only the first-order EEL discussed Tsao and Wu (2013, 2014) is included in this package.
}
\author{
\packageAuthor{eel}

Maintainer: \packageMaintainer{eel}
}
\references{
Tsao, M. (2013). Extending the empirical likelihood by domain expansion. The Canadian Journal of Statistics, 41 (2), 257-274.

Tsao, M., & Wu, F. (2013). Empirical likelihood on the full parameter space. Annals of Statistics, 0 (00), 1-21. doi: 10.1214/13-AOS1143

Tsao, M., & Wu, F. (2014). Extended empirical likelihood for estimating equations.Biometrika, 1-8. doi: 10.1093/biomet/asu014 
}

\keyword{ Empirical}
\keyword{ Likelihood }
\seealso{
\code{\link{EMLogLR}}, \code{\link{EEL}}, \code{\link{EEL_est}}, \code{\link{exp_factor}}, \code{\link{prime_image}}, \code{\link{prime_image_est}}, \code{\link{exp_factor_est}}, 
}

\examples{
# EXAMPLE: computing the EEL for the mean of a bivariate random variable
# Generating a sample of n=40 bivariate observations. 
# For this example, we do this through a univariate normal random number generator.

uninorm<- rnorm(40*2,5,1)                          
multnorm<-matrix(uninorm,ncol=2)

# To calculate the EEL for a point theta=c(5,2), use
EEL(x=multnorm,theta=c(5,2))

# an example to use the EEL_est in the case of estimating equation

# generate regression dataset
# random variable x
dmx2<-runif(100,min=0,max=100)
dmx<-matrix(0,100,2)
dmx[,1]=1
dmx[,2]=dmx2

# set the initial beta value
beta0<-c(1,2)  

# generate random errors and calculate the response variable
errdata<-rnorm(100,0,1)
ydata<-dmx\%*\%beta0+errdata 

# calculate the maximum empirical likelihood estimates
beta_lse<-solve(t(dmx)\%*\%dmx)\%*\%(t(dmx)\%*\%ydata)

num=EEL_est(x=dmx,theta=c(1,2),theta_tilda=beta_lse,
"gx<-matrix(0,nrow=100,ncol=2) 
for(i in 1:2){gx[,i]<-dmx[,i]*(ydata-dmx\%*\%as.matrix(theta))} 
gx")
summary(num)
}
