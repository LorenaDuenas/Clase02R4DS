rm (list = ls())
setwd("D:/Disco_LorenaD_2020/003_Cursos/017_CursoR_Uni/Clase24052020/Clase02_R4DS")
dir()

#### Cargamos la data ####

retail <- read.csv(file = "RetailSales.csv.txt")

#### Alguna informacion de DF #### 
class(retail)
str(retail)
colnames(retail)
View(retail)

####Limpieza de datos ####
# Notamos que existe filas que poseen elementos vacios
#Asi como elementos tipo NA
help("na.omit")
retail <- na.omit(retail)
#limpia datos que no contienen informacion

#str para ver la estructura de los datos
str(retail)

#### Retail : Analisis por anios ####

#Me interesa cual es e ttoal de ventas en todo el year
#veamos cuanto el lo que produjo de ventas por a;o

retail
# en la primera dimension estoy filtrando al a;o 2000
# la segunda dimension no hago nada
retail[retail$Year==2000,]
class(retail[retail$Year==2000,])
sum(retail[retail$Year==2000,]$Sales)

# me interesa saber que vaores uico tiene la columna year'

unique(retail$Year)[5:9]

# quiero utilizar para barrer todos los elemntos de years

unique(retail$Year)

#Utilicemos una estructura for para crear un data frame donde
#almacenaremos un resumen por anio

ResumenSales <- data.frame(Year = integer(),
                           VentaTotal = double())
NuevaFila <- data.frame()

for (y in unique(retail$Year)) {
  NuevaFila <- data.frame(Year=y, VentaTotal = sum(retail[retail$Year==y,]$Sales))
  ResumenSales <- rbind(ResumenSales,NuevaFila)
  }
plot(x=ResumenSales$Year, y=ResumenSales$VentaTotal)

#### Comportamiento data x mes #### 

retail[retail$Month=="Jan",]$Sales
unique(retail$Month)
help("aggregate")

for (m in retail$Month) {
  print(retail[retail$Month==m,])
  }
# ~ dependencia
RetailMes <- aggregate(Sales ~ Month, data= retail, FUN = sum )
RetailMes 

month.abb
month.name

RetailMes <- RetailMes[order(match(RetailMes$Month,month.abb)),]





















