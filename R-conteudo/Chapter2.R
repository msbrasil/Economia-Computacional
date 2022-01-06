#R for Basic Math

#### Arithmetic ####


#how to make basic operations

2 + 3  #plus

14 / 6 #divide

14 / 6 + 5 #R respect the operations order

14 / (6 + 5) #operations into parentheses have preference

3 ^ 2 #exponential

2 ^ 3

sqrt(x = 9) #square root

sqrt(x = 5.311)

#### Logarithms and Exponentials ####

log(x = 243, base = 3) #Logarithms

exp(x = 3) #base e exponential

#### E-Notation ####

#2.3421510129e12, which is equivalent to writing 2.3421510129 × 10 12
# Basically when a number is to high, R don't show all numbers, just flag with e+ and how far he goes.
2342151012900

0.0000002533 #its 10^-7

#### Exercise 2.1 ####

#a) Using R, verify that (equation in book)
 
(6 * (2.3) + 42) / 3 ^ (4.2 - 3.62) #(correct)

#b) Which of the following squares negative 4 and adds 2 to the result?

#i.
(-4) ^ 2 + 2 #(correct)

#c) Using R, how would you calculate the square root of half of the
   #average of the numbers 25.2, 15, 16.44, 15.3, and 18.6?

sqrt(x = 0.5 * ((25.2 + 15 + 16.44 + 15.3 + 18.6) / 5)) #(correct)

#d) Find loge 0.3

log(x = 0.3) #(correct)

#e) Compute the exponential transform of your answer to (d).

exp(-1.203973) #(correct)

#f) Identify R’s representation of −0.00000000423546322 when
    #printing this number to the console.

-0.00000000423546322 #(correct)

#### Assigning Objects ####

x <- -5     #assignment in R
x

x = x + 1   #overwrite previous value of x
x

mynumber = 45.2

y <- mynumber * x
y

ls() #list variables

#### Exercise 2.2 ####

#a.

valueA <- 3 ^ 2 * 4 ^ (1 / 8)
valueA

#b.

valueA = valueA / 2.33
valueA

#c.

valueC <- -8.2e-13
valueC

#d.

valueA * valueC

#### Vectors ####

### Creating a Vector

myvec <- c(1, 3, 1, 42) #how to create a vector
myvec

foo <- 32.1

myvec2 <- c(3, -3, 2, 3.45, 1e+03, 64 ^ 0.5, 2 + (3 - 1.1) / 9.44, foo)
myvec2 #create with calculations and stored items

myvec3 <- c(myvec, myvec2) #vector of vectors
myvec3

### Sequences, Repetition, Sorting, and Lengths

3:27 #sequence for 3 to 27 step 1 by 1

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

sort(x = c(2.5, -1, -10, 3.44), decreasing = FALSE) #lowest to highest value

sort(x = c(2.5, -1, -10, 3.44), decreasing = TRUE)

foo <- seq(from = 4.3,
           to = 5.5,
           length.out = 8)
foo
bar <- sort(x = foo, decreasing = TRUE)
bar

sort(x = c(foo, bar), decreasing = FALSE)

#### Finding a vector length with length()

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

#### Exercise 2.3 ####

#a. Create and store a sequence of values from 5 to −11 that 
   #progresses in steps of 0.3.


seqA <- seq(from = 5, to = -11, by = -0.3) #(correct)
seqA

#b. Overwrite the object from (a) using the same sequence with the
   #order reversed.

seqA <- sort(seqA, decreasing = FALSE) #(correct)
seqA

#c. Repeat the vector c(-1,3,-5,7,-9) twice, with each element
   #repeated 10 times, and store the result. Display the result sorted
   #from largest to smallest.

vecC <- rep(c(-1, 3, -5, 7, -9), times = 2, each = 10) #(correct)
sort(vecC, decreasing = TRUE)

#d. Create and store a vector that contains, in any configuration, the following:
#i. A sequence of integers from 6 to 12 (inclusive)
#ii. A threefold repetition of the value 5.3
#iii. The number −3
#iv. A sequence of nine values starting at 102 and ending at the
#number that is the total length of the vector created in (c)


vecD <-
  c(6:12,
    rep(x = 5.3, times = 3),-3,
    seq(
      from = 102,
      to = length(vecC),
      length.out = 9
    ))
vecD #(correct)

#e. Confirm that the length of the vector created in (d) is 20.

length(vecD) #(correct)

### Subsetting and Element Extraction

myvec <- c(5, -2.3, 4, 4, 4, 6, 8, 10, 40221, -8)
length(myvec)

myvec[1] #access individual element by index

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

bar[c(2, 4, 6)] <- c(-2, -0.5, -1)
bar

bar[7:10] <- 100
bar

#### Exercise 2.4 ####

#a.  Create and store a vector that contains the following, in this order:
#– A sequence of length 5 from 3 to 6 (inclusive)
#– A twofold repetition of the vector c(2,-5.1,-33)
#– The value 7/42 + 2

exvec <-
  c(seq(3, 6, length.out = 5), rep(c(2, -5.1, -33), times = 2), (7 / 42 + 2))
exvec #(correct)

#b. Extract the first and last elements of your vector from (a), storing
   #them as a new object.

firstAndLastElement <- exvec[c(1, length(exvec))]
firstAndLastElement #(correct)

#c. Store as a third object the values returned by omitting the first
   #and last values of your vector from (a).

FirstAndLastOmitted <- exvec[-c(1, length(exvec))] #(correct)
FirstAndLastOmitted

#d. Use only (b) and (c) to reconstruct (a).

reconstructedVec <-
  c(firstAndLastElement[1],
    FirstAndLastOmitted,
    firstAndLastElement[2])
reconstructedVec #(correct) 

#e.Overwrite (a) with the same values sorted from smallest to largest.

exvec <- sort(exvec)
exvec #(correct)

#f.Use the colon operator as an index vector to reverse the order
  #of (e), and confirm this is identical to using sort on (e) with
  #decreasing=TRUE.

exvec[length(exvec):1]
sort(exvec, decreasing = TRUE) #(correct)

#g. Create a vector from (c) that repeats the third element of (c)
#three times, the sixth element four times, and the last element once.


repeatedElements <-
  c(
    rep(FirstAndLastOmitted[3], times = 3),
    rep(FirstAndLastOmitted[6], times = 4),
    length(FirstAndLastOmitted)
  )
repeatedElements #(correct)

#h. Create a new vector as a copy of (e) by assigning (e) as is to a
   #newly named object. Using this new copy of (e), overwrite the
   #first, the fifth to the seventh (inclusive), and the last element with
   #the values 99 to 95 (inclusive), respectively.

copyE <- exvec
copyE

copyE[c(1, 5:7, 12)] <- c(99:95)
copyE #(correct)

### Vector-Oriented Behavior

foo <- 5.5:0.5
foo

foo - c(2, 4, 6, 8, 10, 12) #operation on multiples elements

bar <- c(1, -1)
foo * bar

baz <- c(1, -1, 0.5, -0.50)

foo * baz #vector lengths are not even divisible

qux <- 3
foo + qux

foo
sum(foo) #sum of their elements
prod(foo) #their product

foo[c(1, 3, 5, 6)] <- c(-99, 99)
foo

#### Exercise 2.5 ####

#a.  Convert the vector c(2,0.5,1,2,0.5,1,2,0.5,1) to a vector of only
    #1s, using a vector of length 3.

c(2, 0.5, 1, 2, 0.5, 1, 2, 0.5, 1) / c(2, 0.5, 1)

#b. The conversion from a temperature measurement in degrees
   #Fahrenheit F to Celsius C is performed using the following
   #equation: C = 5/9*(F − 32)
   #vector-oriented behavior in R to convert the temperatures 
   #45, 77, 20, 19, 101, 120, and 212 in degrees Fahrenheit to
   #degrees Celsius.

fahrenheit <- c(45, 77, 20, 19, 101, 120, 212)

(fahrenheit - 32) * (5 / 9) #(correct)

#c.Use the vector c(2,4,6) and the vector c(1,2) in conjunction with
  #rep and * to produce the vector c(2,4,6,4,8,12)

vecC <- rep(c(1, 2), each = 3) * c(2, 4, 6)
vecC #(correct)


#d. Overwrite the middle four elements of the resulting vector from
   #(c) with the two recycled values -0.1 and -100, in that order

vecC[2:5]  <- c(-0.1, -100)
vecC
