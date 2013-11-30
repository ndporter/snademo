#Startup
library(statnet)
library(sna)
set.seed(4321)

#Get nominations ready to export
data(faux.mesa.high)
me <- as.matrix.network(faux.mesa.high,matrix.type="edgelist")
ma <- as.matrix.network(faux.mesa.high,matrix.type="adjacency")
write.csv(ma, file="mesaadj.csv")
write.csv(me, file="mesaedge.csv")

#Prepare attribute data for flat table export
Grade <-faux.mesa.high %v% "Grade"
Race <- faux.mesa.high %v% "Race"
Sex <- faux.mesa.high %v% "Sex"
att <- cbind(Grade, Race, Sex) #Create all attribute frame
write.csv(att, file="mesaatt.csv")

