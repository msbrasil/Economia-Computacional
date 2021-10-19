#Special Values, Classes, and Coercion

##Some Special Values

### Infinity

foo <- Inf
foo

bar <- c(3401, Inf, 3.1, -555, Inf, 43)
bar

baz <- 90000^100
baz

qux <- c(-42, 565, -Inf, -Inf, Inf, -45632.3)
qux

Inf * -9
Inf+1
4*-Inf
Inf+Inf
Inf/23
23/Inf

-59/0
59/0

qux
is.infinite(qux)

-Inf<Inf
Inf>Inf

qux==Inf
qux==-Inf

### NaN

foo <- NaN
foo

bar <- c(NaN,54.3,-2,NaN,90094.123,-Inf,55)
bar

-Inf+Inf
Inf/Inf

0/0

NaN+1

bar
is.nan(bar)
is.nan(bar) | is.infinite(bar)

bar[-(which(is.nan(x=bar)|is.infinite(x=bar)))]

# Exercise 6.1

#a.

foo <- c(13563,-14156,-14319,16981,12921,11979,9568,8833,-12968,8133)
foo

foo[foo^75!=Inf]

foo[foo^75!=Inf&foo^75!=-Inf]

#b.
myvec <- c(77875.40, 27551.45, 23764.30, -36478.88, 
           -35466.25, -73333.85, 36599.69, -70585.69, 
           -39803.81, 55976.34, 76694.82, 47032.00)

bar <- matrix(myvec, nrow=3, ncol=4)
bar

bar^65/Inf

which(is.nan(bar^65/Inf), arr.ind = T)

bar^67
which(is.infinite(bar^67), arr.ind = T)

### NA

