## q1, a

x <- c(rep("gold", 20), rep("silver", 30), rep("bronze", 50))

sample(x, 10)

## b

sample(c("success", "failure"), 10, replace = TRUE, prob = c(0.9, 0.1))


## q3

conditional_prob <- function(prob_a_and_b, prob_b) {
  return(prob_a_and_b / prob_b)
}

prob_cloudy <- 0.4
prob_rain <- 0.2
prob_cloud_given_rain <- 0.85

prob_rain_given_cloudy <-
  conditional_prob(prob_cloud_given_rain * prob_rain, prob_cloudy)

prob_rain_given_cloudy


## q4

iris_data <- iris

# # a
# head(iris_data)

# # b
# str(iris_data)

# # c
# range(iris_data$Sepal.Length)

# # d
# mean(iris_data$Sepal.Length)

# # e
# median(iris_data$Sepal.Length)

# # f

quantile(iris_data$Sepal.Length, probs = .25)
quantile(iris_data$Sepal.Length, probs = .75)

# i
# summary(iris_data)
f <- function(y) {
  freq_table <- table(y)
  print(freq_table)
  max_freq <- max(freq_table)
  return(as.integer(names(freq_table)[freq_table == max_freq]))
}


y <- c(1, 1, 1, 1, 2, 2, 2, 3, 4, 5, 6, 3, 2, 4, 2, 1, 4, 4, 1, 2)
f(y)
