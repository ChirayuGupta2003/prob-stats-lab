#######################

x <- seq(0, 4)
px <- c(.41, .37, .16, .05, .01)
weighted.mean(x, px)
sum(x * px) / sum(px)
c(x %*% px)

#######################

f <- function(t) {
  t * 0.1 * exp(-0.1 * t)
}

y <- integrate(f, lower = 0, upper = Inf)
y$value

#######################

x <- seq(0, 3)
px <- c(.1, .2, .2, .5)

y <- 12 * x + 2 * (3 - x) - 18
expected_y <- sum(y * px)
expected_y

#######################

f1 <- function(t) {
  t * .5 * exp(-abs(t))
}

f2 <- function(t) {
  t * t * .5 * exp(-abs(t))
}

first_moment <- integrate(f1, lower = 1, upper = 10)
second_moment <- integrate(f2, lower = 1, upper = 10)
sprintf("First Moment: %f", first_moment$value)
sprintf("Second Moment: %f", second_moment$value)
sprintf("Mean: %f", first_moment$value)
sprintf("Variance: %f", second_moment$value - first_moment$value^2)

#######################

f <- function(y) {
  (3 / 4) * (1 / 4)^(sqrt(y) - 1)
}
x <- 3
y <- x^2
p <- f(y)
print(p)
# expected value and variance of Y for X = 1,2,3,4,5
f <- function(y) {
  (3 / 4) * (1 / 4)^(sqrt(y) - 1)
}
x <- c(1, 2, 3, 4, 5)
y <- x^2
exp1 <- sum(y * f(y))
print(exp1)
#
exp2 <- sum(y * y * f(y))
var <- exp2 - (exp1)^2
print(var)




x <- c(1:5)

fx <- x^2 * (3 / 4) * (1 / 4)^(x^2 - 1)
fx
