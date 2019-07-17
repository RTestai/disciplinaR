#Abrindo os dados do Anscombe:
data("anscombe")



#Checando os dados:
dim(anscombe) # dimensao dos dados, N de linhas e N de colunas
head(anscombe) # seis primeiras linhas dos dados
class(anscombe) # classe do objeto
str(anscombe) # estrutura do objeto



#Selecionando e tirando a média das colunas dos dados:
## media de todos os vetores x
apply(anscombe[,1:4], 2, mean) #aplica uma funcao a todas as linhas de um objeto
## media de todos os vetores y
apply(anscombe[,5:8], 2, mean)



#Realizando a correlação entre os valores
cor(anscombe$x1, anscombe$y1)
cor(anscombe$x2, anscombe$y2)
cor(anscombe$x3, anscombe$y3)
cor(anscombe$x4, anscombe$y4)



# Realizando a regressão linear:
## primeiro criamos objetos com as regressoes dos quatro conjuntos
m1 <- lm(anscombe$y1 ~ anscombe$x1)
m2 <- lm(anscombe$y2 ~ anscombe$x2)
m3 <- lm(anscombe$y3 ~ anscombe$x3)
m4 <- lm(anscombe$y4 ~ anscombe$x4)

## vamos criar agora uma lista com todos os modelos para facilitar o trabalho
mlist <- list(m1, m2, m3, m4)
## agora sim podemos calcular de forma menos repetitiva os coeficientes de regressao
lapply(mlist, coef) #aplica apply para listas a função coef (essa função extrai só os coeficientes dos modelos)




anscombe



# funcao par para definir as configuracoes da janela grafica entre em ?par
par(mfrow=c(2,2), #abre uma janela gráfica com 2 linhas  e 2 colunas
    las=1, # deixa as legendas dos eixos na vertical
    bty="l") # tipo do box do grafico em L 
plot(anscombe$y1 ~ anscombe$x1) #plot das variaveis
abline(mlist[[1]]) # adicionando a reta prevista pelo modelo de regressao. Abline adiciona uma linha a um gráfico.
plot(anscombe$y2 ~ anscombe$x2)
abline(mlist[[2]])
plot(anscombe$y2 ~ anscombe$x3)
abline(mlist[[3]])
plot(anscombe$y3 ~ anscombe$x4)
abline(mlist[[4]])
par(mfrow=c(1,1)) # retorna a janela grafica para o padrao de 1 linha e 1 coluna


#==============================
#           Parte 2
#==============================


#Carregando os arquivos de Iris
head(iris)
summary(iris)

#Verificando a quantidade de informações por espécies
table(iris$Species)
# media do comprimento de sepala por especie
list(iris$Species)
tapply(X = iris$Sepal.Length, INDEX = list(iris$Species), FUN = mean)
# a mesma tarefa, executada por outra funcao. Outros argumentos e outra saída
aggregate(x = iris$Sepal.Length, by = list(iris$Species), FUN = mean)
# ainda a mesma tarefa, com a mesma função mas em uma notação diferente
aggregate(Sepal.Length ~ Species, data=iris, mean)
#Tanto o taplly quanto o aggregate retornam a média (suponto essa aplicação) para os valores de um data frame em função de uma outra coluna.
aggregate(Sepal.Length ~ Species, data=iris, mean)
aggregate(Sepal.Width ~ Species, data=iris, mean)
aggregate(Petal.Length ~ Species, data=iris, mean)

# Calculando o desvio padrão para as funções:
tapply(X = iris$Sepal.Length, INDEX = list(iris$Species), FUN = sd)
tapply(X = iris$Sepal.Width, INDEX = list(iris$Species), FUN = sd)
tapply(X = iris$Petal.Length, INDEX = list(iris$Species), FUN = sd)
tapply(X = iris$Petal.Width, INDEX = list(iris$Species), FUN = sd)


#Calculando a média de outra forma, caso tenha muitas colunas
medias <- matrix(NA, ncol=3, nrow=4)
medias
# definindo o nome das colunas e das linhas da matriz
colnames(medias) <- unique(iris$Species)
rownames(medias) <- names(iris)[-5]
medias
for (i in 1:4){
  medias[i,] <- tapply(iris[,i], iris$Species, mean) 
  medias[i,]
}

#Média de tudo:
vars <- iris[,-5]
vars
apply(vars, 2, mean)


#Encontrando a mediana:
apply(vars, 2, median)


#Moda:
freq_sl <- sort(table(iris$Sepal.Length), decreasing = TRUE)
freq_sl[1]


#Variância
apply(vars, 2, var)


#Desvio Padrão
sd01 <- apply(vars, 2, sd)
# outra forma:
sd02 <- apply(vars, 2, function(x) sqrt(var(x))) #Precisa ter uma função definida dentro dessa posição do apply, já que ele não aceita outro tipo de entrada.
sd01
sd02
sd01==sd02


#Coeficiente de variância:

cv <- function(x){
  (sd(x)/mean(x))*100
}
apply(vars, 2, cv)


#Quantil e percentil
# sumario de 5 numeros
apply(vars, 2, quantile)
# 5%, 50% e 95%
apply(vars, 2, quantile, probs=c(0.5, 0.5, 0.95))


#Calculando o Intervalo
# a funcao range nos retorna os valores minimo e maximo
apply(vars, 2, range)
# aplicando a funcao diff ao resultado do range, temos o valor desejado
# uma boa pratica é nunca sobrescrever um objeto já existente no R, por isso
# nunca nomeie um objeto com um nome já existente
my_range <- function(x){ 
  diff(range(x)) 
}
apply(vars, 2, my_range)



#Interquantil
apply(vars, 2, IQR)


#Correlação
cor(vars)


#Métodos Gráficos: Barra
barplot(table(iris$Species))



#Histograma
par(mfrow=c(2,2))
hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Length)
par(mfrow=c(1,1))



#Histograma com break:
par(mfrow=c(1,2))
hist(iris$Sepal.Width)
hist(iris$Sepal.Width, breaks = 4)
par(mfrow=c(1,1))



#Histograma com curva de densidade
par(mfrow=c(1,2))
hist(iris$Sepal.Width)
hist(iris$Sepal.Width, freq = FALSE)
par(mfrow=c(1,1))




#Curva de densidade
par(mfrow=c(1,2))
# plot da curva de densidade
plot(density(iris$Sepal.Width))
# plot da curva de densidade sobre o histograma de densidade
hist(iris$Sepal.Width, freq = FALSE)
lines(density(iris$Sepal.Width), col="blue") # note que agora estamos usando a funcao o comando add=TRUE
par(mfrow=c(1,1))








