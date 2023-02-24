
------------------------------------------------------------------------
###########################################################################

 Laboratorio_29- Funciones de dplyr- Como sumar una variable por grupo en R

##########################################################################
--------------------------------------------------------------------------

#Elaborado por la alumna JESSICA PAOLA AGUILAR SERVIN.
    
#Excluir valores perdidos de los análisis
#How to sum a variable by group in R
  
#cargar datos 2013
library(data.table)
library(dplyr)

#SUMA DE VARIABLES DE ACUERDO AL GRUPO QUE PERTENEZCA

#RUTA DE DATOS
choose.files()
data2013 <- read.csv("GitHub/JPAS_LABS29/INPUT/greenR_2013.csv")

# Leer elemento como un dataframe
data2013 <- as.data.frame.array(data2013)

# Para saber que clase de datos son
class(data2013)

# Suma de variables DATOS AGRUPADOS
resultados2013 <- data2013 %>% 
  group_by(location_name) %>% 
  summarise(suma_GCI_2013 = sum(GCI_2013, na.rm = T),
            suma_GP_SINVCR = sum(GP_SINVCR, na.rm = T),
            suma_GCP_2013 = sum(GCP_2013, na.rm = T),
            count = n())

#EXPORTAR RESULATDOS
write.csv(data2013, file = "LAB29_DATA2013.cvs")
write.csv(resultados2013, file = "LAB29_RESULTADOS2013.cvs")
