install.packages(raster)
library(raster)
### Para listar os Objetos no Workspace
#ls()

### Para remover
#rm(lista = ls())

### Qual é a pasta de trabalho
#getwd()



### git pull ("vai puxar o arquivo)
### git init
### git status
### git add
### git commit -m "..."
### git push 
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

# Principais classes do R:
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
alterar o valor do elemento do vetor x[2] <- 5.
x[x<2] <- 0 vai substituir por zero todos os valores menores que 2.
