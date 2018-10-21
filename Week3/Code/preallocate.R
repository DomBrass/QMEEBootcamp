#Example of preallocation.


#Naive loop
naive <- function(){
a <- NA
for (i in 1:100000) {
  a <- c(a,i)
}
}

#Preallocated version
preallocated <- function(){
b <- rep(NA, 100000)
for (i in 1:100000) {
  b[i] <- i
} 
 }

#Compares run times
print(system.time(naive()))
print(system.time(preallocated()))
