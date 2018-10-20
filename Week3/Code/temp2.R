MyDF <- read.csv("../Data/EcolArchives-E089-51-D1.csv")
dim(MyDF) #check the size of the data frame you loaded

plot(log(MyDF$Predator.mass), log(MyDF$Prey.mass), pch = 20, xlab = "Predator Mass (kg)", ylab = "Prey Mass (kg)") # Add labels

hist(log(MyDF$Predator.mass), xlab = "Predator Mass (kg)", ylab = "Count") # include labels
