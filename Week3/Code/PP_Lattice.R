require(lattice)
require(dplyr)

MyDF <- read.csv("../Data/EcolArchives-E089-51-D1.csv")

pdf("../Results/Prey_Lattice.pdf", 11.7, 8.3)
densityplot(~log(Predator.mass) | Type.of.feeding.interaction, data=MyDF)
graphics.off(); 

pdf("../Results/Pred_Lattice.pdf", 11.7, 8.3)
densityplot(~log(Prey.mass) | Type.of.feeding.interaction, data=MyDF)
graphics.off(); 

pdf("../Results/SizeRatio_Lattice.pdf", 11.7, 8.3)
densityplot(~log(Predator.mass/Prey.mass) | Type.of.feeding.interaction, data=MyDF)
graphics.off() 

Pop_stat <- group_by(MyDF, Type.of.feeding.interaction) %>%
  summarize("Mean Log Predator Mass" = log(mean(Predator.mass)), "Mean Log Prey Mass" = log(mean(Prey.mass)), 
            "Mean Log Predator Prey Mass Ratio" = log(mean(Predator.mass/Prey.mass)), 
            "Median Log Predator Mass" = log(median(Predator.mass)), "Median Log Prey Mass" = log(median(Prey.mass)), 
                      "Median Log Predator Prey Mass Ratio" = log(median(Predator.mass/Prey.mass)) ) %>%
  rename("Feeding Type" = Type.of.feeding.interaction )
  
write.csv(Pop_stat, file = "../Results/PP_results.csv", row.names = FALSE)
