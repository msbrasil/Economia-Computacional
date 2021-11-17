#1ª Avaliação Bimestral
#Aluno: Matheus de Souza Brasil
#GRR: 20186441

#bibliotecas utilizadas


#----------

#Questão 1

vetor_x <- seq(from = 20, to = 30, by = 1)
vetor_y <- c(2, 13, 19, 28, 33, 49, 88, 64, 101, 400, 0.1)
vetor_z <- seq(from = 80, to = 100, by = 2)

matriz_m <-
  matrix(
    data = c(vetor_x, vetor_y, vetor_z),
    nrow = 11,
    ncol = 3,
    byrow = F
  )
matriz_m

#----------

#Questão 2

vetor_x <- seq(from = 1, to = 25, by = 0.1)

#a) soma dos elementos
sum(vetor_x)

#b) média
mean(vetor_x)

#c) desvio padrão
sd(vetor_x)

#d) variância
var(vetor_x)

#----------

#Questão 3

elementos <- runif(25, min = 1, max = 5)
matriz_m1 <- matrix(data = elementos, nrow = 5, ncol = 5)

matriz_m2 <- diag(x = 5)

#a) multiplificação de m1 por m2

matriz_m1 %*% matriz_m2

#b) produto interno

#c) determinante
det(matriz_m1)

#d) inversa das matrizes m1 e m2
solve(matriz_m1)
solve(matriz_m2)

#----------

#Questão 4

var_x <- c(2, 5, 9, 20, 26, 30, 54)
var_y <- seq(from = 1, to = 10)


qplot(var_x, geom = 'blank')


par(mfrow = c(1, 2))

plot(
  var_x,
  type = 'l',
  xlab = 'eixo x',
  ylab = 'eixo y',
  main = 'Variáveis X',
  col = 4,
  pch = 8,
  lty = 2,
  cex = 2.3,
  lwd = 3.3
)

plot(
  var_y,
  type = 'b',
  xlab = 'eixo x',
  ylab = 'eixo y',
  main = 'Variáveis Y',
  col = 6,
  pch = 15,
  lty = 3,
  cex = 0.7,
  lwd = 2
)

#----------

#Questão 5

cidade <-
  c('Beijing',
    'Lagos',
    'Paris',
    'Rio de Janeiro',
    'San Juan',
    'Toronto')
temperatura <- c(35, 88, 42, 84, 81, 30)

df_cidades <- data.frame(cidade, temperatura)
df_cidades

#----------
#Pacote utilizado para as questões 6, 7, 8 e 9
#install.packages('dslabs')
library(dslabs)
data(murders)
murders

#----------

#Questão 6

#a) total de homícidios

sum(murders$total)

#b) máximo de homícidios

max(murders$total)

#----------

#Questão 7

taxa_100hab <-
  (murders_100k_hab <- murders$total / murders$population) * 100000
cbind(murders, taxa_100hab)

#----------

#Questão 8

#a) plotar gráfico de homícidios por população.

plot(
  x = log(murders$population, base = 10),
  y = log(murders$total, base = 10),
  type = 'p',
  xlab = 'População',
  ylab = 'Assassinatos',
  main = 'Total de Assassinatos pelo Total da População'
)

#b) correlação


cor(murders$population, murders$total)
