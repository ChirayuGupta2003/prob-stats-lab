###### Q1

n <- 100
df <- n - 1

y <- rt(n, df)

y

hist(y)


###### Q2


df <- c(2, 10, 25)

rchisq(n, df[1])
rchisq(n, df[2])
rchisq(n, df[3])


###### Q3

x <- seq(-6, 6, length = 100)

df <- c(1, 4, 10, 30)

dt(x, df[1])
dt(x, df[2])
dt(x, df[3])
dt(x, df[4])

color <- c("red", "blue", "green", "yellow")
plot(x, dt(x, df[4]), type = "l", col = color[4])


for (i in 1:3) {
  lines(x, dt(x, df[i]), col = color[i])
}

###### Q4

## (i)
qf(0.95, 10, 20)

## (ii)
x <- 1.5
v1 <- 10
v2 <- 20


s1 <- pf(x, df1 = v1, df2 = v2)
s2 <- pf(x, df1 = v1, df2 = v2, lower.tail = FALSE)

s1
s2

## (iii)
qf(.25, 10, 20)
qf(.5, 10, 20)
qf(.75, 10, 20)
qf(.999, 10, 20)

## (iv)
y <- rf(1000, 10, 20)
hist(y)
