data(iris)
iris

# criando objetos para auxiliar a construção do gráfico
# criando modelos lineares
mVirg <- lm(Petal.Length ~ Sepal.Width, data=iris[iris$Species=="virginica",])
mVers <- lm(Petal.Length ~ Sepal.Width, data=iris[iris$Species=="versicolor",])
mSet <- lm(Petal.Length ~ Sepal.Width, data=iris[iris$Species=="setosa",])
coefVirg <- coef(mVirg)
coefVers <- coef(mVers)
coefSet <- coef(mSet)
# definindo os limites dos eixos
limy <- c(min(iris$Petal.Length),max(iris$Petal.Length))
limx <- c(min(iris$Sepal.Width),max(iris$Sepal.Width))
## definindo os nomes dos eixos
labx <- "Largura da Sépala"
laby <- "Comprimento da Pétala"



#Construindo os Gráficos:

# define parametros graficos
par(mfrow=c(1,3), las=1, bty="l") # aqui estamos usando las e bty dentro do par para fixar para todas as janelas
## Primeiro Plot:
plot(Petal.Length ~ Sepal.Width, data=iris[iris$Species=="virginica",], 
     col="tomato",
     ylim=limy, xlim=limx,
     ylab=laby, xlab=labx)

# linha do previsto pelo modelo
## a + b*x 
abline(a=coefVirg[1], b=coefVirg[2],
       col='tomato', lwd=2)
mtext("A", 3, adj=0, font=2)

## Segundo Plot:
plot(Petal.Length ~ Sepal.Width, data=iris[iris$Species=="versicolor",], 
     col="navy",
     ylim=limy, xlim=limx,
     ylab="", xlab=labx)
mtext("B", 3, adj=0, font=2)
# linha do previsto pelo modelo
## a + b*x 
abline(a=coefVers[1], b=coefVers[2],
       col='navy', lwd=2)

## Terceiro Plot:

plot(Petal.Length ~ Sepal.Width, data=iris[iris$Species=="setosa",], 
     col="blue",
     ylim=limy, xlim=limx,
     ylab="", xlab=labx)
mtext("C", 3, adj=0, font=2)
# linha do previsto pelo modelo
## a + b*x 
abline(a=mSet[1], b=mSet[2],
       col='blue', lwd=2)



# Exportando os Gráficos para .PNG

png("resultados/graficos.png", res=600, width=5400, height=4200)
# define parametros graficos
# define parametros graficos
par(mfrow=c(1,3), las=1, bty="l") # aqui estamos usando las e bty dentro do par para fixar para todas as janelas

## Primeiro Plot:
plot(Petal.Length ~ Sepal.Width, data=iris[iris$Species=="virginica",], 
     col="tomato",
     ylim=limy, xlim=limx,
     ylab=laby, xlab=labx)

# linha do previsto pelo modelo
## a + b*x 
abline(a=coefVirg[1], b=coefVirg[2],
       col='tomato', lwd=2)
mtext("A", 3, adj=0, font=2)




## Segundo Plot:
plot(Petal.Length ~ Sepal.Width, data=iris[iris$Species=="versicolor",], 
     col="navy",
     ylim=limy, xlim=limx,
     ylab="", xlab=labx)
mtext("B", 3, adj=0, font=2)
# linha do previsto pelo modelo
## a + b*x 
abline(a=coefVers[1], b=coefVers[2],
       col='navy', lwd=2)



## Terceiro Plot:

plot(Petal.Length ~ Sepal.Width, data=iris[iris$Species=="setosa",], 
     col="blue",
     ylim=limy, xlim=limx,
     ylab="", xlab=labx)
mtext("C", 3, adj=0, font=2)
# linha do previsto pelo modelo
## a + b*x 
abline(a=mSet[1], b=mSet[2],
       col='blue', lwd=2)
dev.off()










