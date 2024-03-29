% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/oop_s3.R
\name{\%+=\%}
\alias{\%+=\%}
\title{In-place addition operator}
\usage{
x \%+=\% y
}
\arguments{
\item{x}{Object.}

\item{y}{Another object.}
}
\value{
Depends on the method.
}
\description{
In-place addition operator
}
\examples{
COMPANY <- new_class(class_name = "COMPANY")
company <- COMPANY$instantiate
register_method(COMPANY,
                ..init.. = function(name, age) {
                  self$name <- name
                  self$age <- age
                })
register_method(COMPANY,
                ..iadd.. = function(y) {
                  self$name <- c(self$name, y$name)
                  self$age <- c(self$age, y$age)
                })

good_company <- company(c("patrick", "james"),
                        c(33, 34))
bad_company <- company(c("pat", "jam"),
                       c(3, 4))
good_company \%+=\% bad_company
good_company$name

}
