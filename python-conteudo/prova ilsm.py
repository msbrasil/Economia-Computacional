"""

Prova 2 de Economia Computacional - Modelo ISLMBP
Nome: Gustavo Pietruza
Turno: M

"""
"1) Valores iniciais e Parâmetros"

C0 = 100
c = 0.8
I0 = 200
d = 0.05
f = 2000
T0 = 100
tt = 0.05 # Tau
G0 = 200
Z = 50000
E = 5
X0 = 50
x1 = 0.02
x2 = 80
M0 = 50
m1 = 0.1
m2 = 50
h = 4000
k = 10
Lo = 84000

"2) Variáveis endógenas"
Y = []
C = []
I = []
G = []
T = []
D = []
X = []
M = []
BC = []
L = []
i = []

time = 30

"3) Equações"
# Equação Y
def eqY():
    _Y = C[t] + I[t] + G[t] + X[t] - M[t]
    Y.append(_Y)
    
# Equação C
def eqC(val):
    _C = C0 + c*(val - T[t])   # val = Y[t-1]
    C.append(_C)

# Equação I
def eqI(val,val1):
    _I = I0 + d*val - f*val1   # val1 = i[t-1]
    I.append(_I)

# Equação T
def eqT():
    _T = T0 + tt*Y[t]
    T.append(_T)
    
# Equação G
def eqG():
    _G = G0
    G.append(_G)

# Equação D
def eqD(val):
    _D = val + T[t] - G[t]     # val = D[t-1]
    D.append(_D)
    
# Equação X 
def eqX():
    _X = X0 + x1*Z + x2*E
    X.append(_X)
    
# Equação M
def eqM(val): 
    _M = M0 + m1*val - m2*E
    M.append(_M)
    
# Equação BC
def eqBC():
    _BC = X[t] - M[t]
    BC.append(_BC)
    
# Equação L
def eqL():
    _L = k*Y[t] - k*i[t]
    L.append(_L)
    
# Equação i
def eqi():
    _i = (k/h)*Y[t] - Lo/h
    i.append(_i)
    
"4) Cálculos"
#t=0
# Equilíbro Geral Inicial
A = C0 + (c*T0) + I0 + G0 + X0 - M0
p = (1-(c*(1-tt))-d+m1)
o = 1+((f*k)/(p*h))    
Y_eq = (1/(p*o))*(A + x1*Z + (x2 + m2)*E + (f/h)*Lo)    
Y.append(Y_eq)
i_eq = ((k/h)*Y_eq) - ((1/h)*Lo)
i.append(_i)
C_eq = C0 + c*(Y_eq - T0)
C.append(C_eq)
I_eq = I0 + d*Y_eq + f*i_eq
I.append(I_eq)
T_eq = T0 + tt*Y_eq
T.append(T_eq)
G_eq = G0
G.append(G_eq)
D_eq = T0 - G0
D.append(D_eq)
X_eq = X0 + x1*Z + x2*E
X.append(X_eq)
M_eq = M0 + m1*Y_eq - m2*E
M.append(M_eq)
BC_eq = X0 - M0
BC.append(BC_eq)

for t in range(1,time):
    eqY()
    eqC(Y[t-1])
    eqD(Y[D-1])
    