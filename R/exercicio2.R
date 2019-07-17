tabela <- read.csv("./data/teste.csv",sep = ";",header=TRUE)
x <- subset(tabela, Localidade == "Quebec" & Tipo == "chilled")
y <- mean(x$uptake)

y



