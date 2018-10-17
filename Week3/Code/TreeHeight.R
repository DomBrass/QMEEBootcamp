# This function calculates heights of trees given distance of each
# from its base and angle to its top, using the trignometric formula.
#
# height = distance * tan(radians)
#
# ARGUEMENTS
# degrees: The angle of elevation of tree
# distance: The distance from the base of tree (e.g., meters)
#
# OUTPUT
# The heights of the tree, same units as "distance"

TreeHeight <- function(degrees, distance){
    radians <- degrees * pi / 180
    height <- distance * tan(radians)
    print(paste("Tree height is:", height))
    
    return (height)
}  

TreeData <- read.csv("../Data/trees.csv", header = TRUE, row.names = NULL) # import with headers

TreeData$Tree.Height.m <- TreeHeight(TreeData[, 2], TreeData[, 3])

write.csv(TreeData, "../Results/TreeHts.csv" , row.names = FALSE)
          