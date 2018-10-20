####################################################################
###### Wrangling the Pound Hill Dataset using dplyr and tidyr ######
####################################################################

library(dplyr)
library(tidyverse)
library(readr)
library(tidyr)

############# Load the dataset ###############
# header = false because the raw data don't have real headers
MyData <- read_csv("../Data/PoundHillData.csv", col_names = FALSE)%>%
  separate(2, c("Cultivation", "Block", "Plot", "Quadrat"))

MyMetaData <- read.csv("../Data/PoundHillMetaData.csv",header = T, sep=";", stringsAsFactors = F)

############# Inspect the dataset ###############
dplyr::tbl_df(MyData) #like head(MyData)
dplyr::glimpse(MyData) # like str(MyData)

############# Transpose ###############
# To get those species into columns and treatments into rows 
MyData <- t(MyData) 


############# Replace species absences with zeros ###############
MyData[MyData == ""] = 0

############# Convert raw matrix to data frame ###############

TempData <- as.data.frame(MyData[-1,],stringsAsFactors = F) #stringsAsFactors = F is important!
colnames(TempData) <- MyData[1,] # assign column names from original data

############# Convert from wide to long format  ###############

MyWrangledData <- gather(TempData, key = values -Cultivation, value = Count)

MyWrangledData[, "Cultivation"] <- as.factor(MyWrangledData[, "Cultivation"])
MyWrangledData[, "Block"] <- as.factor(MyWrangledData[, "Block"])
MyWrangledData[, "Plot"] <- as.factor(MyWrangledData[, "Plot"])
MyWrangledData[, "Quadrat"] <- as.factor(MyWrangledData[, "Quadrat"])
MyWrangledData[, "Count"] <- as.numeric(MyWrangledData[, "Count"])

############# Start exploring the data (extend the script below)!  ###############
