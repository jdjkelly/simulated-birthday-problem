library("ggplot2")

collisionPredictor <- function(n, setSize, runs = 10000) {
  set <- 1:setSize
  mean(sapply(1:runs, function(i) { 
    anyDuplicated(sample(set, n, replace = TRUE)) > 0
  }) > 0)
}

birthdaySimulation <- function() {
  sapply(1:100, function(i) collisionPredictor(i, 365))
}

plotBirthdaySimulation <- function() {
  qplot(1:100, data, xlab = "Samples drawn", 
                     ylab = "Probability of a collision", 
                     main = "Birthday Problem with 10k Simulations per Sample Size")
}
