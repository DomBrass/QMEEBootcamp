## run a simulation that samples from a population and uses try.

x <- rnorm(50)
doit <- function(x){
  x <- sample(x, replace = TRUE)
  if(length(unique(x)) > 30){
    print(paste("Mean of this sample was:", as.character(mean(x))))
  }
  else{
    stop("Couldn't calculate mean: too few unique points!")
  }
}

result <- lapply(1:100, function(i) try(doit(x), FALSE))                 

result <- vector("list", 100)
for(i in 1:100){
  result[[i]] <- try(doit(x), FALSE)
}
