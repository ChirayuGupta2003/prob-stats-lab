# experiment6
# q1. i
install.packages("pracma")


f <- function(x, y) {
  if (0 <= x && y <= 1) {
    return(2 * (2 * x + 3 * y) / 5)
  } else {
    return(0)
  }
}
i <- integral2(f, 0, 1, 0, 1)
i

# (ii)
g <- function(y) {
  return(f(1, y))
}

i <- integral(g, 0, 1)
i

# (iii)
h <- function(x) {
  return(f(x, 0))
}
integral(h, 0, 1)

# (iv)
m <- function(x, y) {
  return(x * y * (2 * (2 * x + 3 * y)) / 5)
}
j <- integral2(m, xmin = 0, xmax = 1, ymin = 0, ymax = 1)
j$Q


# q2.i
f <- function(x, y) {
  (x + y) / 30
}
x <- c(0:3)
y <- c(0:2)
mat <- matrix(c(f(0, 0:2), f(1, 0:2), f(2, 0:2), f(3, 0:2)), nrow = 4, ncol = 3, byrow = TRUE)
print(mat)

# (ii)
if (sum(mat) == 1) {
  paste("It is joint mass fxn")
} else {
  paste("not jms")
}
# (iii)
g <- apply(mat, 1, sum)
g
# (iv)
h <- apply(mat, 2, sum)
h
# (v)
mat[1, 2] / h[2]

# (vi)
ex <- sum(x * g)
ex
ey <- sum(y * h)
ey

f2 <- function(x, y) {
  x * y * (x + y) / 30
}
mat2 <- matrix(c(f2(0, 0:2), f2(1, 0:2), f2(2, 0:2), f2(3, 0:2)), nrow = 4, ncol = 3, byrow = TRUE)
exy <- sum(mat2)
exy

ex2 <- sum(x * x * g)
var_x <- (ex2 - ex * ex)
var_x

ey2 <- sum(y * y * h)
var_y <- ey2 - ey * ey
var_y

cov <- exy - ex * ey
cov

corr <- cov / (sqrt(var_x * var_y))
corr
