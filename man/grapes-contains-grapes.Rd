% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/oop_s3.R
\name{\%contains\%}
\alias{\%contains\%}
\title{Membership test operator}
\usage{
x \%contains\% y
}
\arguments{
\item{x}{Object.}

\item{y}{Another object.}
}
\value{
A Boolean value.
}
\description{
Membership test operator
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
                ..contains.. = function(y) y \%in\% self$name)

good_company <- company(c("patrick", "james"),
                        c(33, 34))
good_company \%contains\% "patrick"

}
