load("../Data/KeyWestAnnualMeanTemperature.RData")

roe_obs <- cor(ats$Temp[-100],ats$Temp[-1])

roe_val <- rep(NA, 10000)

for(i in 1:10000){
  Temp_lag <- sample(ats$Temp, 100)
  roe_val[i] <- cor(ats$Temp, Temp_lag)
}

plot(density(roe_val), xlab = "Value of correlation coefficient.", ylab = " Density", main = "Density Kernel for Auto-Correlation of Temperature Data")
abline(v = roe_obs, col = "red")

sum(roe_val > roe_obs)/length(roe_val)
