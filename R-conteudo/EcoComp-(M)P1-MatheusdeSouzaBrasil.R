#1ª Avaliação Bimestral
#Aluno: Matheus de Souza Brasil
#GRR: 20186441

#bibliotecas utilizadas
library(ggplot2)
library(dplyr)

# Questão 1 --------------------

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

# Questão 2 --------------------

vetor_x <- seq(from = 1, to = 25, by = 0.1)

#a) soma dos elementos
sum(vetor_x)

#b) média
mean(vetor_x)

#c) desvio padrão
sd(vetor_x)

#d) variância
var(vetor_x)

# Questão 3 --------------------

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

# Questão 4 --------------------

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

# Questão 5 --------------------

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

# Questão 6 --------------------

#a) total de homícidios

sum(murders$total)

#b) máximo de homícidios

max(murders$total)

# Questão 7 --------------------

taxa_100hab <-
  (murders_100k_hab <- murders$total / murders$population) * 100000
cbind(murders, taxa_100hab)

# Questão 8 --------------------

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

# Questão 9 --------------------

# Questão 10 --------------------



# Questão 11 --------------------

airquality
hist(airquality$Temp)

# Questão 12 --------------------

# Questão 13 --------------------

var_x <- -15:15

#a) plot da função f(x)=x^4+2x

funcao1 <- var_x ^ 4 + 2 * var_x
funcao2 <- var_x ^ 3 - 5 * var_x


plot(
  x = var_x,
  y = funcao1,
  type = 'n',
  ylim = c(-5000, 5000),
  xlab = 'Valores de X',
  ylab = 'Valores das funções'
)
lines(
  x = var_x,
  funcao1,
  lty = 1,
  lwd = 2,
  col = 'red'
)
lines(
  x = var_x,
  funcao2,
  lty = 1,
  lwd = 2,
  col = 'blue'
)
legend(
  "bottom",
  legend = c("f(x)=x^4+2x", "f(x)=x^3-5x"),
  pch = c(19,19),
  col = c("red", "blue")
)

# Questão 14 --------------------

x <-  seq(from = -4, to = 4, by = 0.5)
funcao_y <- 3 * x ^ 2
funcao_z <- x ^ 2 - 5 * x

#a) gráfico de linhas


plot(x = x, y = funcao_y, type = 'n')
lines(
  x = x,
  y = funcao_y,
  lty = 1,
  lwd = 2,
  col = 'blue'
)
lines(
  x = x,
  y = funcao_z,
  lty = 1,
  lwd = 2,
  col = 'red')

#b) gráfico do tipo polígono


plot(x = x, y = funcao_y, type = 'n')
polygon(
  x = x,
  y = funcao_y,
  lty = 1,
  lwd = 2,
  col = '#1b98e0',
  border = '#1b98e0'
)
polygon(
  x = x,
  y = funcao_z,
  lty = 1,
  lwd = 2,
  col = 'red')

#c) ajuste de parâmetros

#d) legenda e título

# Questão 15 --------------------

numeros_aleatorios <- runif(25,-1, 1)
matriz5x5 <- matrix(numeros_aleatorios, nrow = 5, ncol = 5)
matriz5x5

# Questão 16 --------------------

valores <- c(2, 3, 4, 5, 4, 4, 8, 9, 2, 6, 3, 3, 5, 1, 3, 9)
matriz4x4 <- matrix(valores,
                    nrow = 4,
                    ncol = 4,
                    byrow = T)
matriz4x4

# Questão 17 --------------------

# Questão 18 --------------------

df <- mtcars[order(-mtcars$mpg),]
df

# Questão 19 --------------------

# Questão 20 --------------------
