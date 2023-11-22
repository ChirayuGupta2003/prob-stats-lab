dbinom(7, 12, 1 / 6) + dbinom(8, 12, 1 / 6) + dbinom(9, 12, 1 / 6)
pbinom(9, 12, 1 / 6) - pbinom(6, 12, 1 / 6)

#####################

pnorm(84, mean = 72, sd = 15.2, lower.tail = FALSE)

#####################

ppois(50, 50) - ppois(47, 50)

#####################

dhyper(3, n = 17, m = 233, k = 5)

#####################
# a
x <- c(0: 31)
x

# b
pmf <- dbinom(x, 31, .447)
plot(x, pmf)

# c
cdf <- pbinom(x, 31, .447)
plot(x, cdf)

# d
mean(x)
var(x)
sd(x)
