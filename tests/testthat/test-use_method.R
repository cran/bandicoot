test_that("bandicoot::use_method() can attach the function to the target environment", {
  e <- new.env()
  e$..type.. <- "test"
  e$..instantiated.. <- FALSE
  bandicoot::register_method(e, a = function() return(self))

  expect_equal(environment(bandicoot::use_method(e, BASE$..str..)), e$..method_env..)
})

test_that("bandicoot::use_method() can run the function in the target environment", {
  e <- new.env()
  e$..type.. <- "test"
  e$..instantiated.. <- FALSE
  bandicoot::register_method(e, a = function() return(self))

  expect_equal(bandicoot::use_method(e, BASE$..str..)(), "<test class>")
})
