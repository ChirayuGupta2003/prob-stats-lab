factorial <- function(n) {
  if (n < 0) {
    cat("Number must be positive")
    return(NULL)
  } else if (n == 0) {
    return(1)
  } else {
    result <- 1
    for (i in 1:n) {
      result <- result * i
    }
    return(result)
  }
}
