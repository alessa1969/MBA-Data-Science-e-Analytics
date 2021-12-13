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

# Criamos uma tebal de nome notas contendo

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


