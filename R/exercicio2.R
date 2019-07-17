tabela <- read.csv("./data/teste.csv",sep = ";",header=TRUE)

#p <- tabela[tabela$Localidade == "Quebec" & tabela$Tipo == "chilled","uptake"]
#p

x <- subset(tabela, Localidade == "Quebec" & Tipo == "chilled")
y <- mean(x$uptake)

y



