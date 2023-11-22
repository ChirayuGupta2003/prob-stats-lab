punif(60, 0, 60) - punif(45, 0, 60)
punif(30, 0, 60) - punif(20, 0, 60)

### Q2
# a
dexp(3, 0, 0.5)
# b
x <- seq(0, 5, 0.04)
y <- pexp(x, 0.5)
plot(x, y, xlab = "X", ylab = "y")
# c
pexp(3, 0, 0.5)
# d
x <- seq(0, 5, 0.04)
y <- pexp(x, 0.5)
plot(x, y, xlab = "X", ylab = "y", type = "s")
# e
x <- rexp(1000, 0.5)
hist(x, breaks = 20, freq = FALSE, xlab = "X", ylab = "y")
lines(density(x), col = "red")
### Q3
# a
pgamma(1, 2, 1 / 3, lower.tail = FALSE)
# b
qgamma(0.7, 2, 1 / 3)
