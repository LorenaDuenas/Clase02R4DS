rm(list=ls())
getwd()

setwd("D:/Disco_LorenaD_2020/003_Cursos/017_CursoR_Uni/Clase24052020/Clase02_R4DS")
dir()

class(AirPassengers)
help(ts)

library(help="datasets")

class(AirPassengers)
help(ts)
plot(AirPassengers)

class(CO2)
help("CO2")
str(CO2)

data(cars)
data(CO2)

library(car)
install.packages("CARS")

data(Prestige)

str(Prestige)
head(Prestige)
tail(Prestige)
summary(Prestige)
View(Prestige)

Prestige[is.na(Prestige$type),]

help(Prestige)
#Analizamos la correlacion entre todas las variables numericas
cor(Prestige[,-6])

library(corrplot)
corrplot(cor(Prestige[,-6]))

help("CO2")

library(readxl)
library(help="readxl")



