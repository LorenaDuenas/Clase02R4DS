rm(list=ls())
setwd("D:/Disco_LorenaD_2020/003_Cursos/017_CursoR_Uni/Clase24052020/Clase02_R4DS")

#### Creacion de matrices ####

#Para definir un vector 

x1 <- c(2,4,5,8,1,12,23,34)

#Para saber la clase de dato que R le ah asignado a x1
class(x1)

#Definir matrices

help(matrix)

mat1 <- matrix(data = 1:9,nrow = 3,ncol = 3)
mat2 <- matrix(data = 1:9,ncol = 3)
mat3 <- matrix(data = 1:15,nrow = 5)

#byrow= FALSE : lo primero que se llena son las columnas
#y le cmabiamos el nombre de cada columna

mat3 <- matrix(data = 1:15,nrow = 5,byrow = TRUE,
               dimnames = list(c("r1","r2","r3","r4","r5"),c("c1","c2","c3")))

### ALgunas propiedaes del objeto matriz ####

class(mat3)
#me da un vector con las componentes de 
dim(mat3)

help("dim")

dimensiones <- dim(mat3)
dimensiones[1]
dimensiones[2]

colnames(mat3)
rownames(mat3)

colnames(mat3) <- c("col1","col2","col2")
mat3

#### Accedo a los elemtnos de un objeto matrix ####
# Notacion matricial 

help(sample)

#Sample numeros aleatorios
mat4 <- matrix(data = sample(1:129,9),ncol = 3)
mat4[2,2] #mostramos el elemento (2,2)
mat4[2,2] <- pi #Modificamos el valor del elemento (2,2)
mat4[,3] 
mat4[3,]

# Elementos especiales 
-1:1/0
x <- NA









