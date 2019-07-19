install.packages("rgdal")
install.packages("sp")
install.packages("raster")
install.packages("rgeos")
library("rgdal")
library("sp")
library("raster")
library("rgeos")

westeros <- readOGR("C:/Users/JBRJ.JBRJ09286D/Desktop/disciplinaR/Aulas/aula08/data/GoTRelease/political.shp", encoding = "UTF-8")

plot(westeros, las = 1, axes = T)
abline(h = 0, lty = 2, col = "tomato") #plotando a linha do 'equador'

names(westeros)

westeros$ClaimedBy

stark <- westeros[westeros$ClaimedBy == "Stark",]

plot(stark, axes = T, las = 1)


pontos <- spsample(stark, 10, 'random')

plot(stark, las = 1, axes = T)
points(pontos, pch = "=", col = "tomato", cex = 1.5)

pontos.buffer <- buffer(pontos, width = 200000, dissolve = TRUE)


plot(stark, axes = T)
plot(pontos.buffer, add = T, col = "grey60")
points(pontos, col = 'red', pch = 16)



stark.buffer <- buffer(stark, width = 2, dissolve = TRUE)
plot(stark.buffer, col = "grey80", axes = T)
plot(stark, add = T, col = "lightblue")



# Incluindo atributos

westeros
westeros$regiao <- c(rep(1:3, each = 4)) # Ele está incluindo na nova coluna "Região" com os valores de repetição de números de 1 a 3 quatro vezes cada. Essa tabela de atributos pode ser transformada em data frame e exportada. Da mesma forma o oposto.
westeros

# Uninindo Poligonos
names(westeros)
westeros_contorno = aggregate(westeros)
plot(westeros_contorno, axes = T)

new_westeros = aggregate(westeros, by = "regiao")
plot(westeros, axes = T, col = terrain.colors(12))

plot(new_westeros, axes = T, col = terrain.colors(4))


# Exportando para um Shape

writeOGR(
  westeros_contorno, #nome do objeto a ser salvo
  dsn = "./data/meushape", #diretorio a serem salvos os resultados
  layer = "westeros_contorno", #nome do arquivo
  driver = "ESRI Shapefile" #formato pretendido para exportação
)
# Para conseguir resolver o erro da writeogr deve-se incluir a tabela de atributor na geometria. 



westeros_raster <- raster(westeros_contorno, res = 0.08)
westeros_raster <- rasterize(westeros_contorno, westeros_raster) #deixando com o mesmo extent
plot(westeros_raster)



# Manipulando Raster:

var1 <- raster("C:/Users/JBRJ.JBRJ09286D/Desktop/disciplinaR/Aulas/aula08/data/vars/var_1.tif")
var1

plot(var1)

lista <- list.files("C:/Users/JBRJ.JBRJ09286D/Desktop/disciplinaR/Aulas/aula08/data", pattern = "tif$", full.names = T) # O cifrão significa que termina ali.
lista
vars <- stack(lista)
plot(vars)

vars <- stack("C:/Users/JBRJ.JBRJ09286D/Desktop/disciplinaR/Aulas/aula08/data/vars.tif")
plot(vars)

writeRaster(var1, "output.tif")


# Álgebra de Raster

media <- mean(vars)
plot(media)

# Modificando Raster

westeros <- readOGR("C:/Users/JBRJ.JBRJ09286D/Desktop/disciplinaR/Aulas/aula08/data/GoTRelease/political.shp", encoding = "UTF-8")

stark <- westeros[westeros$ClaimedBy == "Stark",]
stark

plot(westeros, axes = T, las = 1)
plot(stark, add = T, col = "tomato") # O add = TRUE adiciona no mesmo layer

plot(var1)
plot(westeros, add = T)

var1_croped <- crop(var1, stark)
var1_croped

plot(var1_croped)
plot(stark, add = T)

var1_masked = mask(var1, stark)
var1_masked


plot(var1_masked)
plot(stark, add = T)


var1.masked2 = mask(crop(var1,stark), stark)
var1.masked2

plot(var1.masked2)
plot(stark, add = T)


# Alterando a resolução do raster

var1.aggregated = aggregate(var1, fact = 4, fun = "mean")
var1.aggregated

plot(var1.aggregated)