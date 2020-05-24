#### Cargar datos ####
setwd("D:/Disco_LorenaD_2020/003_Cursos/017_CursoR_Uni/Clase24052020/Clase02_R4DS")
dir()
gluc <- read.table(file="glucosa.txt",header = TRUE)
class(gluc)
str(gluc)
colnames(gluc)
class(colnames(gluc))
gluc$glucosa
mean(gluc$glucosa)
median(gluc$glucosa)
sd(gluc$glucosa)
var(gluc$glucosa)
quantile(gluc$glucosa,probs = 0.1)
quantile(gluc$glucosa,probs = 0.5)
quantile(gluc$glucosa,probs = c(0.1,0.9))

#Variable temperatura

#Diagrama de disperison
gluc$temperatura
plot(x=1:31, y=gluc$temperatura)
plot(x=1:31, y= gluc$temperatura,
     main = "Dataset glucosa.txt",xlab="indices", ylab = "Temperatura")
