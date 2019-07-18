tabela <- read.csv("./data/exercicio_03_corrigido.csv",sep = ";",header=TRUE)
tabela
soma <- 0
for (i in 2:ncol(tabela)){
  soma <- soma + sum(tabela[,i])
}

soma



  