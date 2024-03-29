% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zzz_BASE.R
\name{BASE$del_attr}
\alias{BASE$del_attr}
\title{Delete an attribute}
\arguments{
\item{attr_name}{Character. Attribute name.}
}
\value{
Return the object itself.
}
\description{
This function delete an attribute.
\subsection{Usage}{

\if{html}{\out{<div class="sourceCode">}}\preformatted{BASE$del_attr(attr_name)
}\if{html}{\out{</div>}}
}
}
\examples{

test <- BASE$instantiate()
test$set_attr("x", 1)
test$x
test$del_attr("x")
test$x
}
