% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/typehint.r
\name{show_typehints}
\alias{show_typehints}
\title{Type hints - Automatic checks of function arguments}
\usage{
show_typehints(fun, color = "#bd0245")
}
\arguments{
\item{fun}{The function of which the type hint checks will be shown.}

\item{color}{Color of the output in standard hex RGB format, default is
\code{#bd0245}.}
}
\value{
No return value, only output in the R console.
}
\description{
Prints out the type hint restrictions for a function in the R
console, based on the type hint comments within the function' body.
}
\examples{

celsius_to_fahrenheit <- function(degrees_celsius) {
 #| degrees_celsius numeric dim(1) not(NA, NULL)

 if(check_types()) return(degrees_celsius * 9/5 + 32)
 else return(NA)

}

show_typehints(celsius_to_fahrenheit)

}
\seealso{
Other typehint: 
\code{\link{check_types}()},
\code{\link{typehint}}
}
\concept{typehint}
