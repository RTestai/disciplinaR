#Abrindo o csv com os dados:
tabela <- read.csv("./data/exercicio_03_corrigido.csv",sep = ";",header=TRUE)
tabela

#Iniciando o looping para somar os valores por coluna:
soma <- 0

for (i in 2:ncol(tabela)){
  soma <- soma + sum(tabela[,i])
}

soma



  