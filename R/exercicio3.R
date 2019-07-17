tabela <- read.csv("./data/exercicio_03_corrigido.csv",sep = ";",header=TRUE)
tabela
dim(tabela)
sum(tabela)
table(tabela$P1)
cont <- 1

for (i in 1:20){
  cont <- cont + table(tabela[i,])[[2]]
  }

  
cont


  