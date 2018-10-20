MyData<- as.matrix(read.csv("../Data/PoundHillData.csv",header = F,  stringsAsFactors = F))
MyMetaData <- read.csv("../Data/PoundHillMetaData.csv",header = T,  sep=";", stringsAsFactors = F)

MyData[MyData == ""] = 0
MyData <- t(MyData)
head(MyData)

TempData <- as.data.frame(MyData[-1,],stringsAsFactors = F)
head(TempData)



colnames(TempData) <- MyData[1,] # assign column names from original data
head(TempData)

rownames(TempData) <- NULL
head(TempData)

require(reshape2)



MyWrangledData[, "Cultivation"] <- as.factor(MyWrangledData[, "Cultivation"])
MyWrangledData[, "Block"] <- as.factor(MyWrangledData[, "Block"])
MyWrangledData[, "Plot"] <- as.factor(MyWrangledData[, "Plot"])
MyWrangledData[, "Quadrat"] <- as.factor(MyWrangledData[, "Quadrat"])
MyWrangledData[, "Count"] <- as.integer(MyWrangledData[, "Count"])
str(MyWrangledData)

require(dplr)

dplyr::tbl_df(MyWrangledData)
dplyr::glimpse(MyWrangledData)
utils::View(MyWrangledData)
dplyr::slice(MyWrangledData, 10:15)

library(dplyr)
