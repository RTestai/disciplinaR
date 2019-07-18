install.packages(raster)
library(raster)
### Para listar os Objetos no Workspace
#ls()

### Para remover
#rm(lista = ls())

### Qual é a pasta de trabalho
#getwd()



### git pull origin master ("vai puxar o arquivo)
### git init
### git status
### git add
### git commit -m "..."
### git push origin master
### No ignore para deletar um arquivo específico: data/exerc...xlsx
### No ignore para deletar uma pasta específica: /data
### No ignore para deletar um formato específico: *xlsx


#================================================                             
#=========  Aula 4 - Anotando funções:  =========
#================================================


#função(argumento1 = valor,...)
# ou função(
#             argumento1 = valor1,
#           ...
#           )

# comentar tudo selecionado: crtl+shift+c
#help(função) ou ?função  >> somente para funções já carregadas!
#??help >> vai buscar em todos os pacotes instalados no computador. 
#?c() >> ao mostrar o resultado, o valor que que mostrará dentro nos parênteses será o pacote que ela faz parte.
#list.dirs() lista todos os diretórios
# o ponto "." resume todo caminho de antes. Dois pontos ".." é o caminho anterior.



### Principais classes do R:

  #   vetor: sequência de valores numéricos ou de caracteres.Um ou outro.
  #   matriz:Sequência de linhas e colunas.são vários vetoroes com o mesmo comprimento. Ou um ou outro.
  #   data frame: como uma matriz, mas aceita vários tipos.
  #   lista: conjunto de vetores, dataframes ou matrizes.
  #   função: São objetos do R, r o seu conteúdo pode ser visto digitando o nome da função.
  #   outros: rasterlayer, rasterstack...


### Vetores: 

  # Estrutura que possui elementos do mesmo tipo. Pode ser numeric, integer, caracter, factor, logic.
  # numeric são os números reais.
  # factor são muitos valores sendo repetidos. 
  # Para criar um vetor: x <- c(1,2,3,4,5)
  # Pode-se criar sem o concatenar c:  x <- 1:7. Ou pode usar o x <- seq(1,7,by = 4)
  # A função class() retorna o tipo do objeto.

  ## Exemplo de factor:

  # x <- c(macho, femea, macho, femea, macho, macho)
  # y <- factor(x)
  # y
  # Vai retornar o que está dentro de x e os níveis.

## Indexação:

  # x[1], isso vai retornar o valor na posição 1.
  # x(c(2,4)) vai retornar o conjunto de posições 2 e 4 para o vetor x. 
  # x < 4, assim ele retornará um vetor lógio afirmando quem é menor ou não (true ou false).
  # Os dois colchetes fazem referência, geralmente, às listas, para pegar o objeto dentro dela. 
  # alterar o valor do elemento do vetor x[2] <- 5.
  # x[x<2] <- 0 vai substituir por zero todos os valores menores que 2.
  # lenght()
  # Head()

### Matriz

  # quando coloca [,1] significa pegar todas as linhas da primeira coluna, e o oporto é o mesmo.
  # criar matriz: matrix(1:9, nrow = 3, ncol = 3)
  # matriz: matrix(1:9, nrow = 3, ncol = 3, byrow = true), ele faz preenchendo pela linha.
  # cbind() irá juntar as colunas. Exemplo: ring <- c(1,2,3,4,5,6,7), ring2 = c(2.3,6,7,8,9,8,4)
  # mat <- cbind(ring,ring2)
  # dim(mat) retorna o tamanho da matriz, em linhas e colunas.
  # colnames() nome das colunas. A mesma coisa para as linhas.
  # rownames <- c(a1,a2,a3,a4,a5,a6,a7) vai renomear as linhas. O mesmo para as colunas.
  # Para indexar baste apenas utilizar uma vírgula para separar a posição linha da coluna.
  # Para modificar a matriz é a mesma coisa do vetor. 

### Data Frame

  # Aceita mais de um tipo de objeto, podendo ser integer, caracter, numeric, factor
  # a <- LETTER[1:5]
  # fac <- sample(a,10, replace = true) vai reamostrar com reposição.
  # x <- data.frame(b = 1, c = 1:10,fac)
  # str() mostra a estrutura do objeto.
  # Para que as strings repetidas não mudem para factor, deve-se usar o stringsAsFactor() = FALSE
  # head() mostra os 6 primeiros, mas pode-se incluir um argumento para visualizar uma quantidade maior.
  # pode-se usar cbind(x,$state...), state é o nome da nova coluna.

### Importar arquivos

  # read.table() , read.csv() , read.csv2(). Esse segundo é o padrão decimal como vírgula.
  # O primeiro argumento é o path, o segundo é o separador e o terceiro é o header. 
  # summary() retorna as informações analisadas dos dados. É boa para controle de qualidade. 
  # as.numeric() converte o arquivo para numérico. A lógica é a mesma para os outros tipos.
  # gsub(",",".",x$comp) faz a substituição da vírgula por ponto na coluna comprimento do data frame.
  # 
  # ### Salvando os dados
  # 
  # write.table(), write.csv(), write.csv2().  Esse arquivo que vai para a pasta results.



#================================================                             
#======  Aula 5 - Análise Exploratória:  ========
#================================================





#data("anscombie")
#apply(anscombie,2,mean) >> aplicar média
#correlação >> cor()
# coef(lm(anscombie$y1 ~ anscombie$x1)) > o til é "em função". Essa função realiza a regressão linear dos dados.
#is.na() para verificar se há NA com um retorno lógico.Pode usar um which().
#moda <- sort(table(fraldas$idade), decresing = true)
#quantile()
#par(mfrow=c(1,2))
#hist() monta um histograma de frequência.
# Só é possível plotar uma curva em um histograma se for uma distribuição probabilística, usando o prob=true.
# a função pairs() retorna o gráfico das correlações.





#================================================                             
#=======  Aula 7 - Análise de Gráficos:  ========
#================================================



# ?factor()
# ?barplot()
# Col no barplot para mudar a cor do gráfico.
# Color Brewer é boa para mapas.
# Color Lovers também é boa para criar paletas de cores.
# Pacotes de cores: wesanderson, HColorBrewer, swatches, colourLovers
#gganimate para criar gráficos animados.






#================================================                             
#===========  Aula 8 - Markdown:  ===============
#================================================






