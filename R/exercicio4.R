#Abrindo csv com os dados:
tab <- read.csv("./data/teste.csv",";",header=TRUE)

#Selecionando os valores de longitude, latitude e espécie:
decimalLongitude <- tab$decimalLongitude
decimalLatitude <- tab$decimalLatitude
especie <- tab$species

#Criando um dataframe com apenas essas informações:
x <- data.frame(species = especie, longitude = decimalLongitude, latitude = decimalLatitude )
x

#Salvando o dataframe como csv:
write.csv(x, "./resultados/Planilha Organizada_exercicio4.csv")