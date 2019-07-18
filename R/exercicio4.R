tab <- read.csv("./data/teste.csv",";",header=TRUE)


decimalLongitude <- tab$decimalLongitude
decimalLatitude <- tab$decimalLatitude
especie <- tab$species


x <- data.frame(species = especie, longitude = decimalLongitude, latitude = decimalLatitude )
x

write.csv(x, "./resultados/Planilha Organizada_exercicio4.csv")