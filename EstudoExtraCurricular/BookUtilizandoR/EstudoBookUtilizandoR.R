#################################################################################################################################
# Estudo da Linguagem R                                                                                                         #
# Objetivo............: Este estudo visa aprimorar o conhecimento e Domínio da Sintaxe e funcionalidades da linguagem R.        #
# Livro de referência.: Utilizando a Linguagem R, Conceitos, Manipulação, Visualização, Modelagem e Elaboração de Relatórios.   #
# Autor(a)............: Luciana Ferreira Alcoforado                                                                             #
# Editora.............: Alta Books                                                                                              #
# Edição..............: 1a (2021)                                                                                               #
#################################################################################################################################

# Capítulo 2: Aprendendo o Essensial do pacote base #

# Operações Matemáticas
5 + 4 # adição
6 - 2 # Subtração
7 * 3 # Multiplicação
45 / 9 # Divisão
2 ^ 2 # Exponeciação (Potência)
sqrt(121) # radiciação raiz quadrada
exp(0) # Exponencial
log(1) # Log na base e
log10(1) # Log na base 10
log2(4) # Log na base 2
log(9,3) # Log na base 3 ou qualquer outra


# Vetores

# Cria um vetor de 3 números
v1 <- c(7, 4, 1) 

# Cira um vetor com 3 nomes (vetor de caracteres)
v2 <- c("sete", "quatro", "um")

# Cria uma sequência de números inteiros entre 5 e 35
v3 <- c(5:35)

# Nota de 3 avaliações do aluno 1
# Armazenada no objeto Nota.aluno1
Nota.aluno1 = c(8, 8.6, 8.8)

# Nota de 3 avaliações do aluno 1
# Armazenada no  objeto do aluno 2
Nota.aluno2 <- c(7.3, 6.7, 7)

# Consultando o conteúdo do objeto Nota.aluno1
Nota.aluno1

# Consultando o conteúdo do objeto Nota.aluno2
Nota.aluno2


# Tabela de dados

# Criamos uma tebela de nome notas contendo

# as notas dos dois alunos em cada coluna
notas = data.frame(Nota.aluno1, Nota.aluno2)

# consultando o conteúdo do objeto
notas
View(notas)

# criamos o vetor Tipo com as referências das linhas
Tipo = c("Prova A", "Prova B", "Prova C")

# acrescentar o vetor Tipo ao objeto notas
notas = data.frame(notas, Tipo)
notas


# Matrizes

#cria uma matriz por colunas
Mc = cbind(Nota.aluno1, Nota.aluno2)
Mc

# cria uma matriz por linhas
Ml = rbind(Nota.aluno1, Nota.aluno2)
Ml

# cria uma matriz or coluna misturando vetor numérico com caracetre
M = cbind(Nota.aluno1, Nota.aluno2, Tipo)

# analisando a estrutura do objeto M
str(M)


# Acessando valores de posições específicas dos objetos

# nota do aluno 1 na posição 2 do vetor
Nota.aluno1[2]

# valor armazendo na posição 2 do objeto Tipo
Tipo[2]

# valor da linha 1 e coluna 2 da matriz Mc
Mc[1, 2]

# valor linha 2 e coluna 3 da matriz Ml
Ml[2, 3]

# todos os valores da coluna 2
notas[,2]

# todos os valores da linha 2
notas[2,]

# Valores do vetr Nota.aluno2 contido no objeto notas
notas$Nota.aluno2

# EXERCICIOS DE FIXAÇÃO PARA O APRENDIZADO

# Realize este exercicio e veja como é simples utilizar as funções que selecionamos anteriormente:

# 1. Crie três vetores x, y e z e uma matriz quadrada com esses vetores, sendo
# x=[1,2,2] y=[1/2, 1.1] z=[1/2, 1.1]
# dada a matriz do livro com x na coluna 1, y na coluna 2 e z na coluna 3

x <- c(1, 2, 2)
y <- c(1/2, 1, 1)
z<- c(1/2, 1, 1)
M =  cbind(x, y, z)
M

# 2. Calcule a média e a mediana de x
mean(x)
median(x)

# 3. Calcule a correlação entre x e seu vetor de soma acumulada
cor(x, cumsum(x))

# 4. Obtenha as dimensões da matriz M
dim(M)

# 5. Obtenha os autovalores e autovetores da matriz M
eigen(M)

# 6. Obtenha o piso e teto do valor 8.799.
floor(8.799)
ceiling(8.799)

# 7. Arredonde o valor 8.799 para uma casa decimal
round(8.799, 1)

# 8. Encontre as raízes do polinômio x^2 - 9

polyroot(c(-9, 0, 1) )

Re(polyroot(c(-9, 0,1)))

# 9. Retorne as diferenças entre os elementos consecutivos do vetor x
diff(x)

# 10. Obtenha o vetor de somas acumuladas do vetor z, o vetor do produto acumulado do vetor y e o vetor do valor máximo acumulado do vetor x
cumsum(z)
cumprod(y)
cummax(x)

# 11. Obtenha o desvio-padrão e a variância de x.
sd(x)
var(x)

# 12. Crie a matriz H e obtenha a média dos elementos de cada linha usando a função apply(H, i=2, mean).
H = cbind(c(0, 4, 3), c(8, 1, 5), c(3, 0, 1))
H
apply(H, 2, mean)

# 13. Crie os seguintes vetores:
X = c(3, 8, 1, 2.5)
Y = c(8, 0, 2)

# Obtenha o resultado da união e da intersecção entre X e Y.
union(X, Y)
intersect(X, Y)

# Capítulo 3: Pacotes que facilitam a sua vida #
search()
install.packages(c("Rmakdown", "Knitr", "data.table",
                   "tidyverse"), dependencies = TRUE)

# Exercícios de fixação para o aprendizado

# 1. Relize a instalação do pacote tideverse (ja foi instaldo na ação anterior)

# 2. Realize a instalação do pacote janitor
install.packages("janitor")

# 3. Realize a a instalação do pacote R Markdown (já foi realização em ação anterior)

# 4. Instale o pacote devtool e utilize-o em seguida para instalar o pacote readr diretamente do github.
install.packages("devtools")
library("devtools")
search()
devtools::install_github("tidyverse/readr")

# 5. Carregue o pacote ggplot2 utilizando as duas possibilidades de comandos disponíveis no R
library("ggplot2")
?ggplot2


# 6. Carregue todos os pacotes tyverse
library("tidyverse")

# 7. Procure por ajuda do pacote dplyr sobre as funções summarize e summarise
?summarise
?summarize

# 8. Consulte a documentação do pacote base
? base
library(help = "base") # Abre a documentação de todo o pacote)

# 9. Consulte um dos modos de executar R online e realize o comando : matriz=cbind(x=1:5, x2=(1:5)^2, x3=(1:5)^3); matriz
matriz=cbind(x=1:5, x2=(1:5)^2, x3=(1:5)^3)
matriz
# Executado no Jupyter 


# Capítulo 4 : Produzindo relatórios com o R Markdown

