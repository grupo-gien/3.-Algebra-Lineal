#-------------------------------------
# Base de datos
insecto<-read.csv2("Insectos.csv",row.names=1)

#-------------------------------------
# LIBRERÍAS REQUERIDAS
library(lattice)
library(ellipse)
require(SciViews)
require(stats)

insecto <- (insecto[,c(2:6)])
mean(insecto)

sd(insecto)^2

sd(insecto)

var(insecto)

summary(insecto)

cor(insecto)

dist<-dist(insecto)

insecto.estand<-scale(insecto)
dist(insecto.estand)

A<-matrix(c(1,2-1,4),2,2,byrow=T)
A

elgen(A)

$values

autovalor<-eigen(A)$values[1]
autovector<-eigen(A)$vectors[,1]

A%*%autovector==autovalor*autovector

