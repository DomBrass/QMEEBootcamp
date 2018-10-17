load("../Data/KeyWestAnnualMeanTemperature.RData")

p_obs <- cor(ats$Year, ats$Temp)

p_val <- rep(NA, 10000)

for(i in 1:10000){
  Temp_lag <- sample(ats$Temp, 100)
  p_val[i] <- cor(ats$Temp, Temp_lag)
}

plot(density(p_val))

sum(p_val > p_obs)/length(p_val)
