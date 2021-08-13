# Testing testthat

# Create a function that takes any numeric data frame and finds the mean of all columns, then finds the maximum column mean, and the min column mean from the df, and returns those values in a vec

library(testthat)

#' Column mean max and min
#' 
#' This function finds the mean of all columns in a data set and then returns the min column mean and max column mean in a vector
#' 
#' @param df a data frame containing all numeric values
#'
#' @return
#' @export
#'
#' @examples
mean_range <- function(df) {
  
  col_means <- apply(X = df, 2, FUN = mean, na.rm = TRUE)
  min_col <- min(col_means)
  max_col <- max(col_means)
  
  range <- c(min_col, max_col)
  return(range)

}

# Unit testing using the testthat package

expect_type(mean_range(df = mtcars), "double")

expect_true(mean_range(mtcars)[1] < mean_range(mtcars)[2])
