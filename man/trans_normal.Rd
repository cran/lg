% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transform.R
\name{trans_normal}
\alias{trans_normal}
\title{Transform the marginals of a multivariate data set to standard normality
based on the logspline density estimator (Kooperberg and Stone, 1991). See
Otneim and Tjøstheim (2017) for details.}
\usage{
trans_normal(x)
}
\arguments{
\item{x}{The data matrix, one row per observation.}
}
\value{
A list containing the transformed data ($transformed_data), and a
  function ($trans_new)  that can be used to transform grid points and obtain
  normalizing constants for use in density estimation functions
}
\description{
Transform the marginals of a multivariate data set to standard normality
based on the logspline density estimator (Kooperberg and Stone, 1991). See
Otneim and Tjøstheim (2017) for details.
}
\references{
Kooperberg, Charles, and Charles J. Stone. "A study of logspline density
  estimation." Computational Statistics & Data Analysis 12.3 (1991): 327-347.

Otneim, Håkon, and Dag Tjøstheim. "The locally gaussian density estimator for
  multivariate data." Statistics and Computing 27, no. 6 (2017): 1595-1616.
}
