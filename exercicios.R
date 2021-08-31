#Objetos

# 1 - Crie 3 objetos de forma que cada um deles pertença a uma das classes: numeric, logical e character.

objeto_numeric <- 1
objeto_logical <- TRUE
objeto_character <- "texto"

# 2 – Verifique a classe de cada um dos objetos criados.

class(objeto_numeric)
class(objeto_logical)
class(objeto_character)

# Vetores

# 1 – Crie um vetor de texto character com os valores: “texto1”, “palavra” e “isso é uma frase” e atribua para o objeto texto.

vetor_texto <- c("texto1", "palavra", "isso é uma frase")

# 2 – Crie um vetor com a sequência de números de 1 a 10 sem escrever explicitamente todos os números e atribua para o objeto sequencia.

vetor_numerico <- 1:10

# Matrizes

# 1 – Crie 2 vetores numéricos com 5 elementos cada e, posteriormente, crie uma matriz juntando os 2 vetores criados e formando uma matriz com 2 colunas e 5 linhas.

vetor_numerico1 <- 0:4
vetor_numerico2 <- 5:9

matrix_2_vetores <- matrix(cbind (vetor_numerico1, vetor_numerico2), ncol = 2)

# Listas

# 1 – Crie uma lista contendo uma matriz com pelo menos 2 vetores.
# Adicione no segundo elemento da sua lista um vetor de texto, com quantos elementos você quiser.

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

# 1 – Crie um Data Frame com uma coluna da classe numeric, uma coluna da classe logical e outra coluna da classe character.

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
# Dica para a instalação: Consulte o repositório https://github.com/ramnathv/rCharts#installation

install_github('ramnathv/rCharts', force = TRUE)

library(rCharts)

# Importação de Dados

# 1 Importe o conjunto de dados:
  
# Quando você acessar o link abaixo, ele irá fazer o download de uma tabela no formato csv.

# https://people.sc.fsu.edu/~jburkardt/data/csv/addresses.csv

# Faça a leitura do arquivo csv baixado no item “a” usando o botão “import dataset”.

# obs.: se atente para qual pasta o arquivo foi baixado e qual a pasta está o seu projeto.

# Manipulação de Vetores

# 1 – Execute o seguinte código:
  
vetor<-21:30

# a. Extraia o elemento 10 de seu vetor.

# b. Extraia os elementos 2 e 5 (em um só comando) de seu vetor.

vetor[c(2,5)]


#Manipulação de Matrizes

#1 – Execute o seguinte código:
  
matriz<- matrix(201:212,nrow=3,ncol=4)

# a. Extraia o segundo elemento da terceira coluna.

matriz[2,3]

# b. Extraia a terceira coluna de sua matriz.

matriz[,3]

# c. Atribua o valor 500 para o último elemento da primeira coluna.

matriz [3,1] <- 500

# Manipulação de listas

# 1. Manipule uma lista:
  
# a. Crie uma lista com 3 elementos (um vetor numérico, um vetor de texto e uma matriz com 3 linhas e 4 colunas).

lista <- list(vetor_numerico = 1:10,
              vetor_texto = "esse é um elemento",
              matriz_nova = matriz)

# b. Faça a extração do valor correspondente a segunda linha e terceira coluna de sua matriz contida na lista.

lista[[3]][2,3]

# Manipulação de Data Frames com a biblioteca Dplyr

# 1 – Desenvolva os itens a seguir:
  
# a. Carregue a biblioteca dplyr

install.packages("dplyr")

library(dplyr)

# b. Selecione as colunas “Day” e “Ozone” do conjunto de dados airquality usando a função select.

names(airquality)

select(airquality,Day,Ozone)

# c. Filtre as observações da segunda quinzena de cada mês usando a função filter (para o mesmo conjunto de dados airquality).

filter(airquality, Day==15)

# d. Repita os dois itens acima, porém agora usando o operador %>% (pipe).

airquality %>%
  select(Day,Ozone) 

airquality %>% 
  filter(Day==15)

# e. Para o conjunto de dados airquality completo, calcule a média da variável “Wind” para cada mês. Use as funções group_by e summarise.

airquality %>%
  group_by(Month) %>%
  summarise(Media = mean (Wind))

# f. Para o conjunto de dados airquality completo, calcule a média da variável “Solar.R” para cada mês. Use as funções group_by e summarise.
# Dica: Nesse caso você precisará definir na função mean que deseja ignorar valores faltantes da variável “Solar.R”.

airquality %>%
  group_by(Month) %>%
  summarise(Media = mean(Solar.R, na.rm = TRUE))

# g. Crie uma nova coluna usando a função mutate com o valor da variável “Wind” dividida pela variável “Temp”.

airquality %>%
  mutate(Wind_Temp = Wind/Temp)

# h. Ordene o conjunto de dados airquality começando pelas maiores temperaturas (variável “Temp”) e, caso haja empate entre as temperaturas, ordene em ordem crescente pela variável “Solar.R”. Para isso, use a função arrange.

airquality %>%
  arrange(-Temp, Solar.R)

# i. Renomeie a variável “Temp” (usando a função rename) para “temperatura” no conjunto de dados airqulity.

airquality %>%
  rename(Temperatura = Temp)

# 2 – Execute o seguinte código:
  
  preco_iris<- data.frame(Species=c("setosa","virginica","versicolor"),preco=c(5,10,15))

# Junte a tabela preco_iris com a tabela nativa do R iris usando a variável “Species” como chave.

  install.packages("plyr")
  library(plyr)
  
  join(iris, preco_iris, by="Species")
  
#  Manipulação de Data e Hora
  
#  1 – Execute o código:
  
  Data1<-"05-03-2021 14:43:12"
  
  Data2<-"10 Janeiro 2021"
  
#  a. Verifique a classe dos objetos Data1 e Data2
  
  class(Data1)
  class(Data2)
  
#  b. Transforme os objetos Data1 e Data2 para o formato de data padrão do R usando a função strptime. Atribua os resultados para os objetos Data1t e Data2t.
  
Data1t <- strptime(Data1, format = "%d-%m-%Y %H:%M:%S")
Data2t <- strptime(Data2, format = "%d %B %Y")

#  c. Extraia apenas a data do objeto Data1t (sem as horas).

format(Data1t,"%d-%m-%Y")

#  d. Extraia apenas o ano do objeto Data2t.

format(Data2t,"%Y")
  