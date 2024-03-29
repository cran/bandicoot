% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utilities.R
\name{bind_fn_2_env}
\alias{bind_fn_2_env}
\title{Bind functions of the current environment to a target environment}
\usage{
bind_fn_2_env(env, ...)
}
\arguments{
\item{env}{Environment.}

\item{...}{Functions.}
}
\value{
No return value, called for side effects.
}
\description{
This function is equivalent to \code{environment(fn) <- env}. Hence functions
must bind to names.
}
\details{
Pass character function names to \code{...} will cause error.
}
\examples{
# Access the associated environment inside a function

self <- NULL
e <- new.env()

# The associated environment needs to have a reference to itself
e$self <- e

e$show_self <- function() return(self)

# The function can only access the global variable `self`
e$show_self()

# Bind the function to the environment `e`
bind_fn_2_env(env = e, e$show_self)

# Both point to the same environment
e$show_self()
e

}
