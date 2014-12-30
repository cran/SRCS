\name{MPBall}
\alias{MPBall}
\docType{data}
\title{
Performance of 3 different dynamic optimization algorithms on the Moving Peaks Benchmark captured at five time moments of the execution (see references)
}
\description{
Dataset with the performance of several dynamic optimization algorithms in the Moving Peaks Benchmark problem (see the source section) at five time moments, just before a change.
The MPB function can be configured according to some parameters such as the dimension, the change frequency and the severity of changes.
The performance measure employed is the average offline error, averaged from the beginning up to each time moment.
This dataset serves for illustrating how to compose a video sequence using function \code{\link{animatedplot}}.
}
\usage{data(MPBall)}
\format{
  A data frame with 82500 observations on the following variables.
  \describe{
    \item{\code{Algorithm}}{A factor with levels \code{reactive-cs} \code{independent-cs} \code{mqso-both} \code{mqso-rand} \code{mqso-change} \code{mqso} \code{agents} \code{soriga}
    that correspond to 8 different algorithms for dynamic optimization applied to the Moving Peaks Benchmark function.}
    \item{\code{Dim}}{A numeric vector with the dimension (number of input variables) of the MPB function.}
    \item{\code{CF}}{A numeric vector with the change frequency along the time, i.e. the number of evaluations of the fitness function after which a change of the location of the function maxima happens.}
    \item{\code{Severity}}{A numeric vector with the severity of a change when it occurs.}
    \item{OffError_1,OffError_25,OffError_49,OffError_73,OffError_97}{
    A numeric vector with the performance measure, in this case the offline error computed as the average (over the previous changes) of the offline errors just before every change. Each
    algorithm was allowed to run for 100 slices, but we have selected only 5 moments of that process, i.e. before the first change, the 25th change, the 49th, 73th and 97th change, in
    order to keep the resulting dataset reasonably small.}
  }
}
\source{
I.G. del Amo, D.A. Pelta. SRCS: a technique for comparing multiple algorithms under several factors in dynamic optimization problems, in: 
E. Alba, A. Nakib, P. Siarry (Eds.), Metaheuristics for Dynamic Optimization. Series: Studies in Computational Intelligence 433, Springer, Berlin/Heidelberg, 2012.
}
\examples{
data(MPBall)
str(MPBall)
head(MPBall)
}
\keyword{datasets}
