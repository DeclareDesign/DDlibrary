% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/two_arm_designer.R
\name{two_arm_designer}
\alias{two_arm_designer}
\alias{simple_two_arm_designer}
\title{Create a one-level two-arm design}
\usage{
two_arm_designer(
  N = 100,
  assignment_prob = 0.5,
  control_mean = 0,
  control_sd = 1,
  ate = 1,
  treatment_mean = control_mean + ate,
  treatment_sd = control_sd,
  rho = 1,
  args_to_fix = NULL
)
}
\arguments{
\item{N}{An integer. Sample size.}

\item{assignment_prob}{A number in [0,1]. Probability of assignment to treatment.}

\item{control_mean}{A number. Average outcome in control.}

\item{control_sd}{A positive number. Standard deviation in control.}

\item{ate}{A number. Average treatment effect.}

\item{treatment_mean}{A number. Average outcome in treatment. Overrides \code{ate} if both specified.}

\item{treatment_sd}{A nonnegative number. Standard deviation in treatment. By default equals \code{control_sd}.}

\item{rho}{A number in [-1,1]. Correlation between treatment and control outcomes.}

\item{args_to_fix}{A character vector. Names of arguments to be args_to_fix in design.}
}
\value{
A simple two-arm design.
}
\description{
Builds a design with one treatment and one control arm.
Treatment effects can be specified either by providing \code{control_mean} and \code{treatment_mean}
or by specifying a \code{control_mean} and \code{ate}.
}
\details{
Units are assigned to treatment using complete random assignment. Potential outcomes are normally distributed according to the mean and sd arguments.
}
\examples{
# Generate a simple two-arm design using default arguments
two_arm_design <- two_arm_designer()
}
\author{
\href{https://declaredesign.org/}{DeclareDesign Team}
}
\concept{experiment}
