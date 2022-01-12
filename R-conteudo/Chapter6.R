#Special Values, Classes, and Coercion

#### Some Special Values ####

### Infinity

foo <- Inf
foo

bar <- c(3401, Inf, 3.1, -555, Inf, 43)
bar

baz <- 90000 ^ 100
baz

qux <- c(-42, 565, -Inf, -Inf, Inf, -45632.3)
qux
 
Inf * -9 #examples of operations that results in infinity
Inf + 1
4 * -Inf
Inf + Inf
Inf / 23
23 / Inf

- 59 / 0
59 / 0

qux
is.infinite(qux) # verify each element 

- Inf < Inf
Inf > Inf

qux == Inf
qux == -Inf

### NaN (Not a Number, impossible to express the result)

foo <- NaN
foo

bar <- c(NaN, 54.3,-2, NaN, 90094.123,-Inf, 55)
bar

- Inf + Inf
Inf / Inf

0 / 0

NaN + 1

bar
is.nan(bar)
is.nan(bar) | is.infinite(bar)

bar[-(which(is.nan(x = bar) | is.infinite(x = bar)))]

#### Exercise 6.1 ####

# a. Store the following vector: (in book)
# Then, do the following:
#   i. Output all elements of foo that, when raised to a power of 75,
# are NOT infinite.
# ii. Return the elements of foo, excluding those that result in
# negative infinity when raised to a power of 75.

foo <-
  c(13563,-14156,-14319,
    16981,
    12921,
    11979,
    9568,
    8833,-12968,
    8133)
foo

foo[is.finite(foo^75)]

foo[-which(foo^75==-Inf)]

# b.Store the following 3 × 4 matrix as the object bar: (in book)
# Now, do the following:
#   i. Identify the coordinate-specific indexes of the entries of bar
# that are NaN when you raise bar to a power of 65 and divide by
# infinity.
# ii. Return the values in bar that are NOT NaN when bar is raised
# to a power of 67 and infinity is added to the result. Confirm
# this is identical to identifying those values in bar that, when
# raised to a power of 67, are not equal to negative infinity.
# iii. Identify those values in bar that are either negative infinity
# OR finite when you raise bar to a power of 67.

myvec <- c(
  77875.40,
  27551.45,
  23764.30,
  -36478.88,
  -35466.25,
  -73333.85,
  36599.69,
  -70585.69,
  -39803.81,
  55976.34,
  76694.82,
  47032.00
)

bar <- matrix(myvec, nrow = 3,
              ncol = 4)
bar

which(is.nan(bar ^ 65 / Inf), arr.ind = T)

bar[!is.nan(bar^67+Inf)]
bar[bar^67!=-Inf]

bar[bar^67==-Inf|is.finite(bar^67)]

### NA

foo <- c('character', 'a', NA, 'with', 'string',
         NA)
foo

bar <-
  factor(c(
    "blue",
    NA,
    NA,
    "blue",
    "green",
    "blue",
    NA,
    "red",
    "red",
    NA,
    "green"
  ))
bar

baz <- matrix(c(1:3, NA, 5, 6, NA, 8, NA), nrow = 3,
              ncol = 3)
baz

qux <-
  c(NA,
    5.89,
    Inf,
    NA,
    9.43,-2.35,
    NaN,
    2.10,-8.53,-7.58,
    NA,-4.58,
    2.01,
    NaN)
qux

is.na(qux) #flags the NA entries, also, flags NaN entries =/

which(is.nan(qux)) #identify positions whose elements are NaN

which(is.na(qux) & !is.nan(qux)) #JUST NA entries

quux <- na.omit(qux) #omitte NA and NaN from vector
quux

3 + 2.1 * NA - 4 #calculations with NA result in NA
3 * c(1, 2, NA, NA, NaN, 6)

### NULL

#empty position that can be accessed and overitten if necessary

foo <- NULL
foo #print object dont provide a index

bar <- NA
bar

c(2, 4, NA, 8) #4 elements
c(2, 4, NULL, 8)  #3 elements

c(NA, NA, NA)
c(NULL, NULL, NULL)

opt.arg <- c('string1', 'string2', 'string3')

is.na(opt.arg) #check each value
is.null(opt.arg) #just say if is empty or supplied

NULL + 63
45 <= NULL
NaN - NULL + NA / Inf

foo <- list(member1 = c(33, 1, 5.2, 7), member2 = "NA or NULL?")
foo
foo$member3

foo$member3 <- NA
foo$member3

# Exercise 6.2

#a.

foo <- c(4.3, 2.2, NULL, 2.4, NaN, 3.3, 3.1, NULL, 3.4, NA)
#i. true, correct
#ii. true, correct
#iii. false, correct
#iv. true, correct

length(foo)
which(is.na(foo))
is.null(foo)
is.na(x = foo[8]) + 4 / NULL

#b. don't understand what is alpha and beta called in the question

## Understanding Types, Classes, and Coercion

### Attributes

foo <- matrix(data = 1:9,
              nrow = 3,
              
              ncol = 3)
foo

attributes(foo)

attr(foo, which = 'dim') #if you know the attribute name

dim(foo) #most commons attributes have their own functions

bar <-
  matrix(
    data = 1:9,
    nrow = 3,
    
    ncol = 3,
    dimnames = list(c("A", "B", "C"), #give columns
                    c("D", "E", "F"))
  )#and rows names
bar

attributes(bar)#dimnames are attributes

dimnames(bar)

dimnames(foo) <- list(c("A", "B", "C"), c("D", "E", "F"))
foo

### Object Class
#describe and entity in R

num.vec1 <- 1:4
num.vec2 <- seq(from = 1, to = 4, length = 6)
char.vec <- c("a", "few", "strings", "here")
logic.vec <- c(T, F, F, F, T, F, T, T)
fac.vec <-
  factor(c("Blue", "Blue", "Green", "Red", "Green", "Yellow"))

class(num.vec1)
class(num.vec2)
class(char.vec)
class(logic.vec)
class(fac.vec)

ordfac.vec <- factor(
  x = c("Small", "Large", "Large", "Regular", "Small"),
  levels = c("Small", "Regular", "Large"),
  ordered = TRUE
)
ordfac.vec
class(ordfac.vec) #multiple class

### Is-Dot Object-Checking Functions

num.vec1 <- 1:4
num.vec1

is.integer(num.vec1)
is.numeric(num.vec1)
is.matrix(num.vec1)
is.data.frame(num.vec1)
is.vector(num.vec1)
is.logical(num.vec1)

### As-Dot Coercion Functions

1:4 + c(T, F, F, T)

foo <- 34
bar <- T

paste("Definitely foo: ", foo, "; definitely bar: ", bar, ".", sep = "")

as.numeric(c(T, F, F, T)) #coercion

1:4 + as.numeric(c(T, F, F, T))


foo <- 34
foo.ch <- as.character(foo)
foo.ch

bar <- T
bar.ch <- as.character(bar)
bar.ch

as.numeric("32.4") #make sense
as.numeric("g'day mate") #dont make sense

as.logical(c("1", "0", "1", "0", "0"))
as.logical(as.numeric(c("1", "0", "1", "0", "0")))

baz <- factor(x = c("male", "male", "female", "male"))
baz

as.numeric(baz)

foo <- matrix(data = 1:4,
              nrow = 2,
              ncol = 2)
foo

as.vector(foo)

bar <- array(data = c(8, 1, 9, 5, 5, 1, 3, 4, 3, 9, 8, 8),
             dim = c(2, 3, 2))
bar

as.vector(bar)

baz <- list(var1 = foo,
            var2 = c(T, F, T),
            var3 = factor(x = c(2, 3, 4, 4, 2)))
baz

as.data.frame(baz) #not matching lengths

qux <-
  list(
    var1 = c(3, 4, 5, 1),
    var2 = c(T, F, T, T),
    var3 = factor(x = c(4, 4, 2, 1))
  )
qux

as.data.frame(qux)

# Exercise 6.3

#a.

foo <- array(data = 1:36, dim = c(3, 3, 4))
class(foo)
bar <- as.vector(foo)
class(bar)
baz <- as.character(bar)
class(baz)
qux <- as.factor(baz)
class(qux)
quux <- bar + c(-0.1, 0.1)
class(quux)

#b.

#too lazy to complete all questions