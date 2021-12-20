#R for Basic Math

## Arithmetic
#how to make basic operations
2 + 3  #plus

14 / 6 #divide

14 / 6 + 5 #R respect the operations order

14 / (6 + 5) #operations into parentheses have preference

3 ^ 2 #power

2 ^ 3

sqrt(x = 9) #square root

sqrt(x = 5.311)

## Logarithms and Exponentials

log(x = 243, base = 3) #Logarithms

exp(x = 3) #base e exponential

## E-Notation

#2.3421510129e12, which is equivalent to writing 2.3421510129 × 10 12
# Basically when a number is to high, R don't show all numbers, just flag with e+ and how far he goes.
2342151012900

0.0000002533 #its 10^-7

# Exercise 2.1

#a)

(6 * (2.3) + 42) / 3 ^ (4.2 - 3.62)

#b)

(-4) ^ 2 + 2

#c)

sqrt(x = 0.5 * ((25.2 + 15 + 16.44 + 15.3 + 18.6) / 5))

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

newValue <- 3 ^ 2 * 4 ^ (1 / 8)
newValue

#b.

newValue = newValue / 2.33
newValue

#c.

newValue2 <- -8.2 * 10e-13

#d.

newValue * newValue2

## Vectors

### Creating a Vector

myvec <- c(1, 3, 1, 42) #create a vector
myvec

foo <- 32.1

myvec2 <- c(3,-3, 2, 3.45, 1e+03, 64 ^ 0.5, 2 + (3 - 1.1) / 9.44, foo)
myvec2 #create with calculations and stored items

myvec3 <- c(myvec, myvec2) #vector of vectors
myvec3

### Sequences, Repetition, Sorting, and Lengths

3:27 #sequence for 3 to 27 by 1

foo <- 5.3

bar <- foo:(-47 + 1.5)
bar

#### Sequence with seq

seq(from = 3, to = 27, by = 3)

seq(from = 3,
    to = 27,
    length.out = 40) #exactly 40 evenly spaced numbers

foo <- 5.3

myseq <-
  seq(from = foo,
      to = (-47 + 1.5),
      by = -2.4) #decreasing sequence
myseq

myseq2 <- seq(from = foo,
              to = (-47 + 1.5),
              length.out = 5)
myseq2

#### Repetition with rep

rep(x = 1, times = 4)

rep(x = c(3, 62, 8.3), times = 3)

rep(x = c(3, 62, 8.3),
    times = 3,
    each = 2)

foo <- 4

c(3,
  8.3,
  rep(x = 32, times = foo),
  seq(
    from = -2,
    to = 1,
    length.out = foo + 1
  ))

#### Sorting with sort

sort(x = c(2.5,-1,-10, 3.44), decreasing = FALSE) #lowest to highest value

sort(x = c(2.5,-1,-10, 3.44), decreasing = TRUE)

foo <- seq(from = 4.3,
           to = 5.5,
           length.out = 8)
foo
bar <- sort (x = foo, decreasing = TRUE)
bar

sort(x = c(foo, bar), decreasing = FALSE)

#### Finding a vector length with length

length(x = c(3, 2, 8, 1))

length(x = 5:13)

foo <- 4

bar <-
  c(3,
    8.3,
    rep(x = 32, times = foo),
    seq(
      from = -2,
      to = 1,
      length.out = foo + 1
    ))
length(bar)

## Exercise 2.3

#a.

seqA <- seq(from = 5, to = -11, by = -0.3)
seqA

#b.

seqA <- sort(seqA, decreasing = FALSE)
seqA

#c.

vecC <- rep(c(-1, 3,-5, 7,-9), times = 2, each = 10)
sort(vecC, decreasing = TRUE)

#d.

vecD <-
  c(6:12,
    rep(x = 5.3, times = 3),
    -3,
    seq(
      from = 102,
      to = length(vecC),
      length.out = 9
    ))
vecD

#e.

length(vecD)

### Subsetting and Element Extraction

myvec <- c(5,-2.3, 4, 4, 4, 6, 8, 10, 40221,-8)
length(myvec)

myvec[1] #access individual element

foo <- myvec[2]
foo

myvec[length(myvec)]

myvec.len <- length(myvec)

myvec.len
bar <- myvec[myvec.len - 1] #index may be an arithmetic function
bar

1:myvec.len

myvec[-1] #this line produces myvec without the first element
myvec[-2]

qux <- myvec[-(myvec.len - 1)]
qux

c(qux[-length(qux)], bar, qux[length(qux)])

myvec[c(1, 3, 5)] #subset using vector of indexes
foo <- myvec[1:4]
foo

foo[length(foo):2] #elements 4, 3 and 2

indexes <- c(4, rep(2, times = 3), 1, 1, 2, 3:1)
indexes
foo[indexes]

foo[-c(1, 3)] #deleting more than one element

bar <- c(3, 2, 4, 4, 1, 2, 4, 1, 0, 0, 5)
bar

bar[1] <- 6 #overwrite certain element
bar

bar[c(2, 4, 6)] <- c(-2,-0.5,-1)
bar

bar[7:10] <- 100
bar

# Exercise 2.4

#a.

exvec <-
  c(seq(3, 6, length.out = 5), rep(c(2,-5.1,-33), times = 2), (7 / 42 + 2))
exvec

#b.

firstAndLastElement <- exvec[c(1, 12)]
firstAndLastElement

#c.

FirstAndLastOmitted <- exvec[c(-1,-12)]
FirstAndLastOmitted

#d.

reconstructedVec <-
  c(firstAndLastElement[1],
    FirstAndLastOmitted,
    firstAndLastElement[2])
reconstructedVec

#e.

exvec <- sort(exvec)
exvec

#f.

exvec[12:1]
sort(exvec, decreasing = TRUE)

#g.

repeatedElements <-
  c(
    rep(FirstAndLastOmitted[3], times = 3),
    rep(FirstAndLastOmitted[6], times = 4),
    length(FirstAndLastOmitted)
  )
repeatedElements

#h.

copyE <- exvec
copyE

copyE[c(1, 5:7, 12)] <- c(99:94)
copyE

### Vector-Oriented Behavior

foo <- 5.5:0.5
foo

foo - c(2, 4, 6, 8, 10, 12) #operation on multiples elements

bar <- c(1,-1)
foo * bar

baz <- c(1,-1, 0.5,-0.50)

foo * baz #vector lengths are not even divisible

qux <- 3
foo + qux

foo
sum(foo) #sum of their elements
prod(foo) #their product

foo[c(1, 3, 5, 6)] <- c(-99, 99)
foo

### Exercise 2.5

#a. dont know how to do that

#b.

fahrenheit <- c(45, 77, 20, 19, 101, 120, 212)

(fahrenheit - 32) * (5 / 9)

#c.

vecC <- rep(c(1, 2), times = 2) * c(2, 4, 6)
vecC

#d.alteração