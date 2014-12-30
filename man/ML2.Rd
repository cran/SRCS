\name{ML2}
\alias{ML2a}
\alias{ML2b}
\docType{data}
\title{
Performance of 6 different preprocessing algorithms over 6 supervised classification algorithms in imbalanced datasets
}
\description{
Dataset with the test accuracy of 6 supervised classification algorithms on three imbalanced datasets that have been
previously treated with 6 pre-processing algorithms, also known as a filtering technique. The aim is to study the
performance of the pre-processing techniques when coupled with different classification algorithms, hence the target
is the preprocessing technique rather than the classification algorithm. There are two data-frame objects associated with two
different imbalance ratios (IR = N-/N+ where N- and N+ stand for the number of examples in the majority and minority classes) in the datasets.
Object ML2a corresponds to IR = 5 while ML2b corresponds to IR = 7.
}
\usage{data(ML2)}
\format{
  Two data frames called \code{ML2a} and \code{ML2b}, with 13500 observations each, and the following 7 variables:
  \describe{
    \item{\code{Algorithm}}{A factor with 6 levels: \code{1-NN, C4.5, LDA, PART, RIPPER, SVM}
        that correspond to 6 different supervised classification algorithms.}
    \item{\code{Filter}}{A factor with 6 levels: \code{BORD_SMOTE, SL_SMOTE, SMOTE, SMOTE_ENN, SMOTE_TL, SPIDER2} that correspond to
        6 different data pre-processing techniques especially well suited for imbalanced datasets.}
    \item{\code{Shape}}{A factor with 3 levels: \code{Clover, Paw, Sub-cluster} corresponding to the names of three synthetic imbalanced datasets 
    with borderline examples. The names describe the general shape of the spatial disposition of the examples.}
    \item{\code{Imbalance ratio}}{An integer (constant equal to 5 or 7) with the quotient of the number of examples in the majority class divided by the number 
    of examples in the minority class. IR = 5 for the object \code{ML2a} and 7 for \code{ML2b}.}
    \item{\code{Disturbance ratio}}{A real number with the ratio of borderline examples from the minority class.}
    \item{\code{Fold}}{An integer number associated with the number of repetition (from 1 to 25) of the experiment, as the results were obtained using 5 
    complete repetitions of a 5-fold Cross Validation.}
    \item{\code{Performance}}{Real number with the accuracy of the classification algorithm (between 0 and 1) over the test examples.}
  }
}
%\details{
%%  ~~ If necessary, more details than the __description__ above ~~
%}
\source{
N. V. Chawla, K. W. Bowyer, L. O. Hall, and W. P. Kegelmeyer. 2002. SMOTE: synthetic minority oversampling
technique. Journal of Artificial Intelligence Research 16 (2002), 321-357.
}
\references{
C. Bunkhumpornpat, K. Sinapiromsaran, and C. Lursinsap. 2009. Safe-Level-SMOTE: Safe-Level-Synthetic
Minority Over-Sampling TEchnique for Handling the Class Imbalanced Problem. In Proceedings of
the 13th Pacific-Asia Conference on Advances in Knowledge Discovery and Data Mining (PAKDD 09).
Springer-Verlag, Berlin, Heidelberg, 475-482.

G. Batista, R. Prati, and M. Monard. 2004. A study of the behavior of several methods for balancing machine
learning training data. ACM SIGKDD Explorations Newsletter 6, 1 (2004), 20-29.
}
\examples{
data(ML2)
str(ML2a)
head(ML2a)
}
\keyword{datasets}
