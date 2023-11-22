sample_distributions <- function(sample_size) {
  samples <- c()


  for (i in 1:9000) {
    samples[i] <- mean(sample(data$Wall.Thickness, sample_size, replace = TRUE))
  }

  main <- paste("Histogram of Wall Thickness (Sample size: ", sample_size, ")")

  hist(samples, xlab = xlab, ylab = ylab, main = main, col = "#5ebd55")
}

sample_distributions(10)
sample_distributions(50)
sample_distributions(500)
sample_distributions(9000)
