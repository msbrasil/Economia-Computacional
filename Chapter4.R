# Non-numeric values

## Logical Values

### TRUE or FALSE?

foo <- TRUE
foo

bar <- F
bar

baz <- c(T, F, F, F, T, F, T, T, T, F, T, F) #vectors can be filled with logical values
baz

length(baz)

qux <- matrix(baz, nrow=3, ncol=4, byrow=foo)
qux

### A Logical Outcome: Relational Operators

1==2

1>2

(2-1)<=2

1!=(2+3)

foo <- c(3,2,1,4,1,2,1,-1,0,3)
bar <- c(4,1,2,1,1,0,0,3,0,4)

length(foo)==length(bar)

foo==bar

foo<bar

foo<=bar

foo<=(bar+10)

baz <- foo[c(10,3)]
baz

foo>baz

foo<3

foo.mat <- matrix(foo,nrow=5, ncol=2)
foo.mat

bar.mat <- matrix(bar,nrow=5, ncol=2)
bar.mat

foo.mat<=bar.mat

foo.mat<3

qux <- foo==bar
qux

any(qux) #any() returns TRUE if any of the logical values are TRUE and FALSE otherwise 

all(qux) #all() returns TRUE only if all logical values are TRUE.

quux <- foo<=(bar+10)
quux

any(quux)

all(quux)

# Exercise 4.1

#a. 

vectorA <- c(6,9,7,3,6,7,9,6,3,6,6,7,1,9,1)

vectorA==6
vectorA>=6
vectorA<6+2
vectorA!=6

#b.

vectorB <- vectorA[-c(1,2,3)]
arrayB <- array(vectorB, dim=c(2,2,3))

arrayB <= 6/2+4
arrayB+2<= 6/2+4

#c.

matrixC <- diag(x=10)
matrixC==0

#d.

any(arrayB)

all(arrayB)

#e.

extractC <- matrixC[diag()]

#how extract the diagonal elements?

### Multiple Comparisons: Logical Operators

FALSE || ((T&&TRUE) || FALSE)

!TRUE&&TRUE

(T&&(TRUE||F))&&FALSE

(6<4)||(3!=1)

foo <- c(T, F, F, F, T, F, T, T, T, F, T, F)
bar <- c(F, T, F, T, F, F, F, F, T, T, T, T)

foo&bar

foo | bar

foo&&bar

foo||bar

# Exercise 4.2

#a.

foo <- c(7, 1, 7, 10, 5, 9, 10, 3, 10, 8)

foo > 5 | foo == 2

#b.

bar <- c(8, 8, 4, 4, 5, 1, 5, 6, 6, 8)

bar <= 6 & bar != 4

#c.

(foo > 5 | foo == 2) & (bar <= 6 & bar != 4)

#d. 

baz <- foo + bar
baz

baz >= 14 & baz != 15

baz/foo > 4 | baz/foo <= 2

#e. ?

### Logicals Are Numbers!

TRUE + TRUE

FALSE - TRUE

T+T+F+T+F+F+T

1&&1

1||0

0&&1

### logical Subsetting and Extraction

