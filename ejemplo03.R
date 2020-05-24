#Estructuras de decision
#ejecuto un numero 
x<- runif(1,0,10)
if(x>5){
  y <- TRUE
} else{
  y <- FALSE
}
# #En general
# if(condl){
#   bloque
# }

#### Estructura de repeticion : FOR ####

for(i in 1:5){
  print(i)
}
#En general 
# for(variable in objetoiterable){
#   algo de cogigo que depende de variable
# }

#Para cargar el paquete extradir
library(extraDistr)
help("extraDistr") #Accedemos a la ayuda del paquete

library(help="extraDistr") #Mostramos toda la informacion
#que posee el paquete

help("BetaPrime") #Accdemos a la ayuda de una funcion

#### Definicion de funciones de usuario en R #### 

# NombreDeLaFuncion <- funtion(arg1,arg2,arg3,...){
#   #AlgunafunionalidadImplementadaCodigoR
# }










