## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(bandicoot)

## -----------------------------------------------------------------------------
# You don't actually need to specify BASE here. This is only for demonstration.
DEMO <- new_class(BASE, class_name = "DEMO")
DEMO

## -----------------------------------------------------------------------------
DEMO$..type..
DEMO$..class..

## -----------------------------------------------------------------------------
DEMO$..dir..()
DEMO$..methods..()

## -----------------------------------------------------------------------------
DEMO$..str..()

## -----------------------------------------------------------------------------
pre_defined_fn <- function() 1 + 2

register_method(DEMO, inline_fn = function() 1 + 1, pre_defined_fn = pre_defined_fn)

DEMO$inline_fn()
DEMO$pre_defined_fn()

## -----------------------------------------------------------------------------
DEMO$val <- 5

register_method(DEMO, get_val = function() self$val)

DEMO$get_val()

## -----------------------------------------------------------------------------
init <- function(first_name, employee_id) {
  self$first_name <- first_name
  self$employee_id <- employee_id
}

register_method(DEMO, ..init.. = init)

## -----------------------------------------------------------------------------
mike <- DEMO$instantiate("Mike", 25)
mike

## -----------------------------------------------------------------------------
mike$first_name
mike$employee_id

## -----------------------------------------------------------------------------
class_DEMO_2 <- function(env = new.env(parent = parent.frame())) {
  
  new_class(env = env, class_name = "DEMO_2")
  
  init_ <- function(first_name, employee_id) {
    self$first_name <- first_name
    self$employee_id <- employee_id
  }
  
  get_email_ <- function() {
    paste0(self$first_name, "_", self$employee_id, "@company.com")
  }
  
  str_ <- function() {
    paste(use_method(self, super()$..str..)(), 
          paste("Name:", self$first_name,
                "\nEmployee ID:", self$employee_id,
                "\nEmail:", self$get_email()), 
          sep = "\n")
  }
  
  register_method(env,
                  ..init.. = init_,
                  get_email = get_email_,
                  ..str.. = str_)
  
  return(env)
}

## -----------------------------------------------------------------------------
DEMO_2 <- class_DEMO_2()
mike <- DEMO_2$instantiate("Mike", 25)
mike$get_email()

## -----------------------------------------------------------------------------
mike$..str..()
mike

