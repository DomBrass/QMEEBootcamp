#!/usr/bin/env Rscript
#
# This function calculates heights of trees given distance of each
# from its base and angle to its top, using the trignometric formula.
#
# height = distance * tan(radians)
#
# ARGUEMENTS
# degrees: The angle of elevation of tree
# distance: The distance from the base of tree (e.g., meters)
# input_file: A csv file to read in
#
# OUTPUT
# The heights of the tree, same units as "distance"

TreeHeight <- function(degrees, distance){
  radians <- degrees * pi / 180
  height <- distance * tan(radians)
  print(paste("Tree height is:", height))
  
  return (height)
}  

args = commandArgs(trailingOnly=TRUE)
file_name <-tools::file_path_sans_ext(basename(args))

if (length(args)==0) {
  
  stop("At least one argument must be supplied (input file).n", call.=FALSE)

} else if (length(args)==1) {
  TreeData <- read.csv(args[1], header = TRUE, row.names = NULL) # import with headers
  
  TreeData$Tree.Height.m <- TreeHeight(TreeData[, 2], TreeData[, 3])
  
  eval(parse(text = paste0("write.csv(TreeData, '../Results/", file_name ,"_treeheights.csv' , row.names = FALSE)")))
}

