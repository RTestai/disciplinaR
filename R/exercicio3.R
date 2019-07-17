tabela <- read.csv("./data/exercicio_03_corrigido.csv",sep = ";",header=TRUE)
tabela
ncol(tabela)

x <- colnames(tabela)
x[1]
#p <- 0

#for p in tabela:
  
contagem <- subset(tabela,x[1] = 1)
contagem

  