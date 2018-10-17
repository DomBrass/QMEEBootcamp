require (raster)
require (maps)
temp1<-matrix(data = rexp(180*360, rate = 10), nrow = 360, ncol = 180)  #random matrix
r<-raster(temp1,xmn=-179.5,xmx=179.5,ymn=-89.5,ymx=89.5,crs="+proj=longlat +datum=WGS84")

plot(r)
map("world",add=T,fill=TRUE, col="white", bg="white")
points(gpdd$long, gpdd$lat)