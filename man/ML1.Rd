\name{ML1}
\alias{ML1}
\docType{data}
\title{
Performance of 6 different supervised classification algorithms on eight noisy datasets (see references)
}
\description{
Dataset with the test accuracy of 6 supervised classification algorithms on eight noisy datasets.
The way noise is introduced in originally clear datasets can be adjusted according to some parameters such as the noise type 
(attribute noise versus class noise) and the noise ratio.
}
\usage{data(ML1)}
\format{
  A data frame with 52800 observations on the following 6 variables.
  \describe{
    \item{\code{Algorithm}}{A factor with 6 levels: \code{1-NN, 3-NN, 5-NN, C4.5, RIPPER, SVM}
        that correspond to 6 different supervised classification algorithms.}
    \item{\code{Dataset}}{A factor with 8 levels: \code{autos, balanced, cleveland, ecoli, ionosphere, pima,} \code{vehicle} corresponding to the
				names of eight datasets in which noise has been introduced artificially.}
    \item{\code{Noise type}}{A factor with 4 levels: \code{ATT_GAUS, ATT_RAND, CLA_PAIR, CLA_RAND} that correspond to
        the type of noise introduced: ATT_* to denote noise added to (a percentage of) the attributes of the instance (either in a gaussian or 
        uniformly random way), and CLA_* to denote noise which modifies the class of (a percentage of) the instances of the dataset
        (either by any other class at random, as in CLA_RAND, or by replacing the label of only a percentage of the examples of the majority class by 
        the label of the second-majority class as in CLA_PAIR).}
    \item{\code{Noise ratio}}{A real number with the ratio of attributes affected by noise (for \code{ATT_GAUS} and \code{ATT_RAND}), or 
				the ratio of examples within the global dataset affected by a class error (for \code{CLA_PAIR} and \code{CLA_RAND}).}
    \item{\code{Fold}}{An integer number (between 1 and 25) associated with the repetition of the experiment. Recall that test results were obtained by
				repeating five independent times a complete 5-fold Cross Validation process.}
    \item{\code{Performance}}{Real number between 0 and 1 with the accuracy (in percentage) of the classifier over the test examples.}
  }
}
%%\details{
%%  ~~ If necessary, more details than the __description__ above ~~
%%}
\source{
J.A. Saez, M.Galar, J.Luengo, F.Herrera, Tackling the Problem of Classification 
with Noisy Data using Multiple Classifier Systems: Analysis of the Performance and Robustness. 
Information Sciences, 247 (2013) 1-20.
}
\references{
Christopher M. Bishop. Pattern Recognition and Machine Learning. Springer (2006).
}
\examples{
data(ML1)
str(ML1)
head(ML1)
}
\keyword{datasets}
