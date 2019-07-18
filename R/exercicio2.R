tabela <- read.csv("./data/exercicio_02.csv",sep = ",",header=TRUE)
tabela
x <- subset(tabela, Localidade == "Quebec" & Tipo == "chilled")
y <- mean(x$uptake)

y

