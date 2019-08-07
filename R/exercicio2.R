#Abrindo o cvs com os dados:
tabela <- read.csv("./data/exercicio_02.csv",sep = ",",header=TRUE)
tabela

#Utilizando a função subset para filtrar por Localidade e Tipo:
x <- subset(tabela, Localidade == "Quebec" & Tipo == "chilled")

#Aplicando a média no novo dataframe filtrado:
y <- mean(x$uptake)

#Plotando:
y

