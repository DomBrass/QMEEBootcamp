require(ggplot2)
require(dplyr)

MyDF <- read.csv("../Data/EcolArchives-E089-51-D1.csv")

ggplot(data = MyDF, aes(x = log(Prey.mass), y = log(Predator.mass), colour = Predator.lifestage))+
  geom_point(shape = 3)+
  geom_smooth(method='lm',formula=y~x, fullrange = TRUE) +
  facet_wrap(~Type.of.feeding.interaction, ncol = 1, strip.position = "right") +
  scale_y_continuous(name = "Prey Mass in grams", labels = scales::scientific) +
  scale_x_continuous(name = "Predator Mass in grams", labels = scales::scientific) +
  theme(legend.position="bottom")
  
