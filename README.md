# Simulating the Birthday Problem with R

The Birthday Problem asks how many people would you need to sample from a group in order for any 2 of them to share the same birthday. Intuitively, we might reason that with 365 days in the year, we'd need to sample somewhere around 183 people in order to have a 50% chance of a duplicate birthday amongst our sample. This is, however, far too many. 

In fact, we only need to sample 24 people in order to have a 1 in 2 chance of 2 people in our group of 24 sharing the same birthday. The generalized formula is `1.2 * sqrt(setSize)`. Given that this is a counter intuitive outcome, it can be helpful to run actual simulations as a proof. This repo uses the standard lib in R to do that. We take the vector `1:365` and run 10,000 sampling simulations for increasing sample sizes from 1 to 100. We then plot the means of each simulation.

## Preview

![](https://github.com/jdjkelly/simulated-birthday-problem/blob/master/simulated-birthday-problem.png?raw=true)

## Running

1. Ensure you have `R` and `ggplot2` installed.
2. In R, source the package (which, assuming you're working directory is this repo looks something like `source("src/birthdayProblem.R")` 
3. Run `plotBirthdaySimulation()`

This package contains other potentially useful functions for running similar collision simulations on arbitrarily large sets. See `collisionPredictor`.


