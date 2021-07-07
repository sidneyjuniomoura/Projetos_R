
#Objetos

# 1 - Crie 3 objetos de forma que cada um deles 
# pertença a uma das classes: numeric, logical e character.

objeto_numeric <- 1
objeto_logical <- TRUE
objeto_character <- "texto"

# 2 – Verifique a classe de cada um dos objetos criados.

class(objeto_numeric)
class(objeto_logical)
class(objeto_character)

# Vetores

# 1 – Crie um vetor de texto character com os valores: “texto1”, “palavra” 
# e “isso é uma frase” e atribua para o objeto texto.

vetor_texto <- c("texto1", "palavra", "isso é uma frase")

# 2 – Crie um vetor com a sequência de números de 1 a 10 sem escrever 
# explicitamente todos os números e atribua para o objeto sequencia.

vetor_numerico <- 1:10

# Matrizes

# 1 – Crie 2 vetores numéricos com 5 elementos cada e, posteriormente, 
# crie uma matriz juntando os 2 vetores criados e formando uma matriz 
# com 2 colunas e 5 linhas.

vetor_numerico1 <- 0:4
vetor_numerico2 <- 5:9

matrix_2_vetores <- matrix(cbind (vetor_numerico1, vetor_numerico2), ncol = 2)

# Listas

# 1 – Crie uma lista contendo uma matriz com pelo menos 2 vetores.
# Adicione no segundo elemento da sua lista um vetor de texto,
# com quantos elementos você quiser.

vetor_texto1 <- c("um", "dois", "três")
vetor_texto2 <- c("quatro", "cinco", "seis")
matrix_lista <- matrix(cbind (vetor_texto1, vetor_texto2), ncol = 2)
lista <- list(matrix_lista)
vetor_texto3 <- c("sete", "oito", "nove")
lista[[2]] <- vetor_texto3


# Coerção de Classes

# 1 – Execute o seguinte código no seu console:
  
#  profissao <- c("cientista","analista","jogador")

# a) Verifique qual a classe do objeto profissao.

class(profissao)

# b) Transforme o objeto profissao para fator.

profissao <- as.factor(profissao)


# Data Frames

# 1 – Crie um Data Frame com uma coluna da classe numeric, 
# uma coluna da classe logical e outra coluna da classe character.

coluna_numerico <- 1:5
coluna_logica <- c(TRUE, FALSE, TRUE, FALSE, FALSE)
coluna_caracter <- c("verdadeiro", "falso", "verdadeiro", "falso", "falso")               
data_frame <- data.frame(coluna_numerico, coluna_logica, coluna_caracter)

# 2 – Altere apenas o nome da 2ª coluna do seu data frame.

names(data_frame)[2] <- "logica"

# Bibliotecas

# 1 – Instale a biblioteca devtools.

install.packages("devtools")

# 2 – Carregue a biblioteca devtools.

library(devtools)

# 3 – Instale a biblioteca rCharts usando a função “install_github”.
# Dica para a instalação: Consulte o repositório 
# https://github.com/ramnathv/rCharts#installation

install_github('ramnathv/rCharts', force = TRUE)

library(rCharts)


# Importação de Dados

# 1 Importe o conjunto de dados:
  
# Quando você acessar o link abaixo, ele irá fazer o download de uma tabela 
# no formato csv.

# https://people.sc.fsu.edu/~jburkardt/data/csv/addresses.csv

# Faça a leitura do arquivo csv baixado no item “a” 
# usando o botão “import dataset”.

# obs.: se atente para qual pasta o arquivo foi baixado
# e qual a pasta está o seu projeto.


