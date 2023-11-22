x <- c(rep("gold", 20), rep("silver", 30), rep("bronze", 50))

sample(x)

x <- sample(c("SUCCESS", "FAILURE"), 10, replace = TRUE, prob = c(0.9, 0.1))

x
