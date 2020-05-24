#### Data Frame #### 

#Definicion
Nota1 <- runif(10,1,19)
Nota2 <- runif(1:20,10)
MiprimerDF <- data.frame(NOTAAP=Nota1, NOTAF=Nota2)

view(MiprimerDF)

#### Acceso a la informacion de un DF #### 
MiPrimerDF$NOTAP
MiPrimerDF[[1]]
MiprimerDF[,1]
