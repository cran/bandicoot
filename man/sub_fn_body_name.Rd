% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utilities.R
\name{sub_fn_body_name}
\alias{sub_fn_body_name}
\title{Substitute a symbol in a function body}
\usage{
sub_fn_body_name(fn, old_name, new_name)
}
\arguments{
\item{fn}{Function.}

\item{old_name}{Character. Name that needs to be replaced.}

\item{new_name}{Character. Replacement of the old name.}
}
\value{
A function.
}
\description{
This function substitute all \code{old_names} with \code{new_names} in a function
body, \strong{and drops all the attributes}.
}
\examples{

a <- function() self$x + self$y
a

sub_fn_body_name(a, "self", "this")

}
\seealso{
\code{\link[=body]{body()}}
}
