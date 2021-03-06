% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/density_estimation.R
\name{dlg_marginal_wrapper}
\alias{dlg_marginal_wrapper}
\title{Marginal estimates for multivariate data}
\usage{
dlg_marginal_wrapper(data_matrix, eval_matrix, bw_vector)
}
\arguments{
\item{data_matrix}{The matrix of data points. One column constitutes an
observation vector.}

\item{eval_matrix}{The matrix of evaluation points. One column constitutes a
vector of grid points.}

\item{bw_vector}{The vector of bandwidths, one element per component.}
}
\value{
A list with marginal parameter and density estimates as provided by
  the \code{dlg_bivariate}-function. One element per column in the data.
}
\description{
Estimates the marginal locally Gaussian parameters for a
multivariate data set
}
\details{
This function takes in a matrix of observations, a matrix of evaluation
points and a vector of bandwidths, and does a locally Gaussian fit on each of
the marginals using the \code{dlg_bivariate}-function. This function assumes
that the data and evaluation points are organized column-wise in matrices,
and that the bandwidth is found in the corresponding element in the bandwidth
matrix. The primary use for this function is multivariate density estimation
using the "5par_marginals_fixed"-method.
}
\examples{
  data_matrix <- cbind(rnorm(100), rnorm(100))
  eval_matrix <- cbind(seq(-4, 4, 1), seq(-4, 4, 1))
  bw <- c(1, 1)

  estimate <- dlg_marginal_wrapper(data_matrix, eval_matrix = eval_matrix, bw = bw)

}
