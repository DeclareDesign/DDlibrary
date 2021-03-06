% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers.R
\name{code_fixer}
\alias{code_fixer}
\title{Substitute approach}
\usage{
code_fixer(design_expr, list_fixed_str, eval_envir)
}
\arguments{
\item{design_expr}{A string. The text of the expression in which you wish to substitute symbols for their set values.}

\item{list_fixed_str}{A string. The string of code that generates a named list of arguments that will be substituted in the evaluated \code{design_expr}.}

\item{eval_envir}{The evaluation environment. Defaults to environment in which design arguments are already evaluated.}
}
\description{
Substitute approach
}
