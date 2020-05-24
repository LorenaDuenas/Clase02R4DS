#### Archivo cloud.txt ####
#primero elarchivo debe sr txt
#2 buscamos si tiene cabeceras o no

setwd("D:/Disco_LorenaD_2020/003_Cursos/017_CursoR_Uni/Clase24052020/Clase02_R4DS")
dir()
cloud <- read.table(file="cloud.txt",header = TRUE)

colnames(cloud)
str(cloud)
class(cloud)
cloud$Ispc
cloud$Cloudpt

#### Histograma ####
help(hist)
#fue calculada en funcion de R surges
hist(cloud$Cloudpt)
h_cloudpt <- hist(cloud$Cloudpt) 

#mids puntos medios de los intervalos de clase
#breaks me permite accedereje X

h_cloudpt$breaks
h_cloudpt$counts

range(cloud$Cloudpt)
#quiero una secuencia de puntos que va desde 20 a 34 con
#saltos de uno en uno

b1 <- 20:34
b2<-seq(20,34,1)

hist(cloud$Cloudpt,breaks = b1)

#### Boxplot ####
help("boxplot")
boxplot(cloud$Cloudpt)














