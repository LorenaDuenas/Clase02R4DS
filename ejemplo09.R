rm(list=ls())
getwd()
dir(pattern = "xlsx")

#### Cargar la data en memoria ####

excel_sheets(path="excel_prueba.xlsx")
# Asimple vista debemos ver que tiene comportamiento vectorai
excel_iris <- read_excel("excel_prueba.xlsx",sheet = "iris")
excel_women <- read_excel("excel_prueba.xlsx", 
                          sheet = excel_sheets(path = "excel_prueba.xlsx")[2],
                          col_names = FALSE)
str(excel_women)
colnames(excel_women)
colnames(excel_women) <- c("col1","col2")

#skip saltar para que empiza a leer los datos 
excel_air <- read_excel(path="excel_prueba.xlsx",sheet="airquality",skip = 3)
View(excel_air)

colnames(excel_air)
excel_air$Observaciones
#sumar elementos 
sum(excel_air$Observaciones)
#sumar solo eleemntos con NA
sum(excel_air$Observaciones,na.rm = TRUE)

#suma de datos de la columna fecha
sum(excel_air$Fechas,na.rm = TRUE)

#le quitamos una columna
excel_air[,-c(1,6,11)]

#Le deicmos qu el NA es el guion
excel_air <- read_excel(path="excel_prueba.xlsx",sheet="airquality",skip = 3, na='-')
excel_air <- excel_air[,-c(1,6,11)]
excel_air <- na.omit(excel_air)





