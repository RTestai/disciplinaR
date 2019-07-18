trees <- read.csv("https://raw.githubusercontent.com/AndreaSanchezTapia/analise_de_dados_ENBT_2019/master/aula04/data/trees.csv",",",header=TRUE)
trees

#Fazendo sumário:
summary(trees)

#Variância:
apply(trees, 2, var)

#Desvio Padrão:
sd <- apply(trees, 2, sd)
sd

#Construindo Histograma:
par(mfrow=c(2,3))
hist(trees$Girth)
hist(trees$Height)
hist(trees$Volume)
par(mfrow=c(1,1))


#Construindo Boxplot:
par(mfrow=c(1,3))
b1 <- boxplot(trees$Girth)
b2 <- boxplot(trees$Height)
b3 <- boxplot(trees$Volume)
par(mfrow=c(1,1))


#Outliers:
outb1 <- b1$out
outb2 <- b2$out
outb3 <- b3$out
outb3 #Outlier da variável "Volume".


#Correlação das variáveis:
cor(trees)


