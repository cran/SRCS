\name{MPB}
\alias{MPB}
\docType{data}
\title{
Performance of 8 different dynamic optimization algorithms on the Moving Peaks Benchmark (see references)
}
\description{
Dataset with the performance of several dynamic optimization algorithms in the Moving Peaks Benchmark problem (see the source section).
The MPB function can be configured according to some parameters such as the dimension, the change frequency and the severity of changes.
The performance measure employed is the average offline error.
}
\usage{data(MPB)}
\format{
  A data frame with 220000 observations on the following 5 variables.
  \describe{
    \item{\code{Algorithm}}{A factor with levels \code{reactive-cs} \code{independent-cs} \code{mqso-both} \code{mqso-rand} \code{mqso-change} \code{mqso} \code{agents} \code{soriga}
    that correspond to 8 different algorithms for dynamic optimization applied to the Moving Peaks Benchmark function.}
    \item{\code{Dim}}{A numeric vector with the dimension (number of input variables) of the MPB function.}
    \item{\code{CF}}{A numeric vector with the change frequency along the time, i.e. the number of evaluations of the fitness function after which a change of the location of the function maxima happens.}
    \item{\code{Severity}}{A numeric vector with the severity of a change when it occurs.}
    \item{\code{OffError}}{A numeric vector with the performance measure, in this case the offline error computed as the average of the offline errors just before every change.}
  }
}
\source{
I.G. del Amo, D.A. Pelta. SRCS: a technique for comparing multiple algorithms under several factors in dynamic optimization problems, in: 
E. Alba, A. Nakib, P. Siarry (Eds.), Metaheuristics for Dynamic Optimization. Series: Studies in Computational Intelligence 433, Springer, Berlin/Heidelberg, 2012.
}
\examples{
data(MPB)
str(MPB)
head(MPB)
}
\keyword{datasets}
