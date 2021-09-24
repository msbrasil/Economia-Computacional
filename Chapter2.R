#R for Basic Math
## Arithmetic

2 + 3

14/6

14/6+5

14/(6 + 5)

3 ^ 2

2 ^ 3

sqrt(x=9) #square root

sqrt(x=5.311)

## Logarithms and Exponentials

log(x = 243, base = 3) #Logarithms

exp(x=3) #exponencial na base e

## E-Notation

#2.3421510129e12, which is equivalent to writing 2.3421510129 × 10 12

2342151012900 

0.0000002533 #its 10^-7

# Exercise 2.1

#a)

(6*(2.3)+42)/3^(4.2-3.62)

#b)

-4^2+2

#c)

sqrt((25.2 + 15 + 16.44 + 15.3 + 18.6)/2)

#d)

log(x = 0.3)

#e)

exp(-1.203973) #so close

#f)

-0.00000000423546322

## Assigning Objects

x <- -5     #assignment in R
x

x = x + 1   #overwrite previous value of x
x

mynumber = 45.2

y <- mynumber * x
y

ls() #list variables

# Exercise 2.2

#a. 

newValue <- 3^2 * 4^(1/8)
newValue

#b. 

newValue = newValue / 2.33
newValue

#c.

newValue2 <- -8.2 * 10 ^ -13

#d.

newValue * newValue2

## Vectors

### Creating a Vector

myvec <- c(1, 3, 1, 42) #create a vector
myvec

foo <- 32.1

myvec2 <- c(3, -3, 2, 3.45, 1e+03, 64^0.5, 2+(3-1.1)/9.44, foo)
myvec2 #create with calculations and stored items

myvec3 <- c(myvec, myvec2) #vector of vectors
myvec3

### Sequences, Repetition, Sorting, and Lengths

3:27 #sequence for 3 to 27 by 1

foo <- 5.3

bar <- foo:(-47+1.5)
bar

#### Sequence with seq

seq(from=3, to=27, by=3)

seq(from=3, to=27, length.out = 40) #exactly 40 evenly spaced numbers

foo <- 5.3

myseq <- seq(from = foo, to =(-47+1.5), by = -2.4) #decreasing sequence
myseq

myseq2 <- seq(from=foo, to =(-47+1.5), length.out=5)
myseq2

#### Repetition with rep

rep(x=1, times=4)

rep(x = c(3, 62, 8.3), times = 3)

rep(x = c(3, 62, 8.3), times = 3, each = 2)

foo <- 4

c(3, 8.3, rep(x=32, times=foo), seq(from=-2, to=1, length.out=foo+1))

#### Sorting with sort

sort(x=c(2.5, -1, -10, 3.44), decreasing = FALSE)

sort(x=c(2.5, -1, -10, 3.44), decreasing = TRUE)

foo <- seq(from=4.3, to=5.5, length.out=8)
foo
bar <- sort (x=foo, decreasing = TRUE)
bar

sort(x=c(foo, bar), decreasing = FALSE)

#### Finding a vector length with length

length(x=c(3,2,8,1))

length(x=5:13)

foo <- 4

bar <- c(3,8.3, rep(x=32, times=foo), seq(from=-2, to=1, length.out = foo+1))
length(bar)

## Exercise 2.3

#a.

seqA <- seq(from = 5, to = -11, by = -0.3)
seqA

#b.

seqA <- sort(seqA, decreasing = FALSE)
seqA

#c.

vecC <- rep(c(-1, 3, -5, 7, -9), times = 2, each = 10)
sort(vecC, decreasing = TRUE)

#d.

vecD <- c(6:12, rep(x=5.3, times = 3), -3, seq(from=102, to=length(vecC), length.out=9)) 
vecD

#e.

length(vecD)

### Subsetting and Element Extraction
#page 38

