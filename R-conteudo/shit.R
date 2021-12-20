dados <- c(0,0,10,15,18,18,20,25,25,30,32,35,36,40,42,44,45,46,48,48,49,50,50,52,
           52,52,62,62,63,64,65,70,72,74,78,80,82,84,86,88,90,92,95,100,100)




moda <- subset(table(dados), table(dados) == max(table (dados)))
moda
median(dados)

pesos = c(3.3, 3.1, 2.8, 2.7, 2.9, 3.1, 3.2, 3.0, 3.5, 3.4)
mean(pesos)

Regiao <- c('São Paulo','Rio de Janeiro','Recife','Belo Horizonte','Porto Alegre',
            'Salvador','Fortaleza','CUritiba','Belém','Brasília')
IPC <- c(25.1, 27.7, 25.3, 28.6, 29.0, 26.0, 25.3, 32.6, 23.7, 25.6)
Peso <- c(3.383, 2.806, 0.726, 0.682, 0.619, 0.472, 0.444, 0.341, 0.270, 0.257)
ipc_regioes <- data.frame(Regiao, IPC, Peso)  
ipc_regioes

weighted.mean(ipc_regioes$IPC, ipc_regioes$Peso)

x <- c(1.816, 1.828, 1.840, 1.852, 1.864)
f <- c(7, 14, 18, 7, 4)
Fj <- c(7, 21, 39, 46, 50)

Diametros <- data.frame(x, f, Fj)

weighted.mean(Diametros$x, Diametros$f)

X <- c(2, 3, 6, 12, 15, 23, 30)
median(X)

X <- c(3, 6,  9, 12, 14, 15, 17, 20)
median(X)

A <- c(25, 28, 31, 34, 37)
range(A) #mostra o limite inferior e superior do conjunto

grupoA <- c(3, 4, 5, 6, 7)
var(grupoA)

alunoA <- c(40, 50, 60, 70, 80)
alunoB <- c(20, 40, 60, 80, 100)

sd(alunoA)

sd(alunoB)
