#Startup
library(statnet)
library(sna)
set.seed(4321)

#Load data (dataset included with statnet)
data(faux.mesa.high)

#Basic plot of Faux Mesa
plot.network(faux.mesa.high)

#Measures of Node Centrality
#Degree
indeg <- degree(faux.mesa.high, gmode="graph", cmode="indegree")
outdeg <- degree(faux.mesa.high, gmode="graph", cmode="outdegree")
totdeg <- degree(faux.mesa.high, gmode="graph", cmode="freeman")
#Betweenness
between <- betweenness(ma)
#Measures of ego network attributes
#See http://sna.stanford.edu/lab.php?l=7 for more information. Will update Github later

#Combine node-level network measures into a data frame
netatt <- cbind(Grade, Race, Sex, indeg, outdeg, totdeg, between)
view(netatt)
write.csv(netatt, file="mesanetatt.csv")
#Just for fun
plot.network(faux.mesa.high, vertex.cex=totdeg, vertex.col="Sex", vertex.sides="Grade", vertex.border="Race")