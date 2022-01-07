# Non-numeric values

#### Logical Values ####

### TRUE or FALSE?

foo <- TRUE
foo

bar <- F #just the first letter works too
bar

baz <-
  c(T, F, F, F, T, F, T, T, T, F, T, F) #vectors can be filled with logical values
baz

length(baz)

qux <- matrix(baz,
              nrow = 3,
              ncol = 4,
              byrow = foo)
qux

### A Logical Outcome: Relational Operators

1 == 2 #equal...

1 > 2 #more than

(2 - 1) <= 2 #more or equal than... 

1 != (2 + 3) #different 

foo <- c(3, 2, 1, 4, 1, 2, 1, -1, 0, 3)
bar <- c(4, 1, 2, 1, 1, 0, 0, 3, 0, 4)

length(foo) == length(bar)

foo == bar #compare each item in vector

foo < bar

foo <= bar

foo <= (bar + 10)

baz <- foo[c(10, 3)]
baz

foo > baz

foo < 3 #compare each value is less than 3

foo.mat <- matrix(foo, nrow = 5, ncol = 2)
foo.mat

bar.mat <- matrix(bar, nrow = 5, ncol = 2)
bar.mat

foo.mat <= bar.mat

foo.mat < 3

qux <- foo == bar
qux

any(qux) #any() returns TRUE if any of the logical values are TRUE and FALSE otherwise

all(qux) #all() returns TRUE only if all logical values are TRUE.

quux <- foo <= (bar + 10)
quux

any(quux)

all(quux)

#### Exercise 4.1 ####

#a.Store the following vector of 15 values as an object in your
#workspace: c(6,9,7,3,6,7,9,6,3,6,6,7,1,9,1). Identify the following elements:
#  i. Those equal to 6
#ii. Those greater than or equal to 6
#iii. Those less than 6 + 2
#iv. Those not equal to 6

vectorA <- c(6, 9, 7, 3, 6, 7, 9, 6, 3, 6, 6, 7, 1, 9, 1)

vectorA == 6
vectorA >= 6
vectorA < 6 + 2
vectorA != 6
#(correct)

#b. Create a new vector from the one used in (a) by deleting its
#first three elements. With this new vector, fill a 2 × 2 × 3 array.
#Examine the array for the following entries:
#  i. Those less than or equal to 6 divided by 2, plus 4
#ii. Those less than or equal to 6 divided by 2, plus 4, after
#increasing every element in the array by 2

vectorB <- vectorA[-c(1, 2, 3)]
arrayB <- array(vectorB, dim = c(2, 2, 3))

arrayB <= (6 / 2 + 4) #(correct)
(arrayB + 2) <= (6 / 2 + 4) #(correct)

#c.Confirm the specific locations of elements equal to 0 in the
#10 × 10 identity matrix I10 (see Section 3.3).

matrixC <- diag(x = 10)
matrixC == 0 #(correct)

#d. Check whether any of the values of the logical arrays created in
#(b) are TRUE. If they are, check whether they are all TRUE.

any(bar <= (6 / 2 + 4))
all(bar <= (6 / 2 + 4))
any((bar + 2) <= (6 / 2 + 4))
all((bar + 2) <= (6 / 2 + 4))
#(correct)

#e. By extracting the diagonal elements of the logical matrix created
#in (c), use any to confirm there are no TRUE entries.

any(diag(diag(10) == 0)) #(correct)

### Multiple Comparisons: Logical Operators

FALSE || ((T && TRUE) || FALSE)

! TRUE && TRUE

(T && (TRUE || F)) && FALSE

(6 < 4) || (3 != 1)

foo <- c(T, F, F, F, T, F, T, T, T, F, T, F)
bar <- c(F, T, F, T, F, F, F, F, T, T, T, T)

foo & bar

foo | bar

foo && bar

foo || bar

#### Exercise 4.2 ####

#a. Store the vector c(7,1,7,10,5,9,10,3,10,8) as foo. Identify the
#elements greater than 5 OR equal to 2.

foo <- c(7, 1, 7, 10, 5, 9, 10, 3, 10, 8)

(foo > 5) | (foo == 2) #(correct)

#b. Store the vector c(8,8,4,4,5,1,5,6,6,8) as bar. 
#Identify the elements less than or equal to 6 AND not equal to 4.

bar <- c(8, 8, 4, 4, 5, 1, 5, 6, 6, 8)

(bar <= 6) & (bar != 4) #(correct)

#c.Identify the elements that satisfy (a) in foo AND satisfy (b) in bar.

((foo > 5) | (foo == 2)) & ((bar <= 6) & (bar != 4)) #correct

#d. Store a third vector called baz that is equal to the element-wise
#sum of foo and bar. Determine the following:
#  i. The elements of baz greater than or equal to 14 but not equal to 15
#ii. The elements of the vector obtained via an element-wise
#division of baz by foo that are greater than 4 OR less than or equal to 2

baz <- foo + bar
baz

(baz >= 14) & (baz != 15)

(baz / foo > 4) | (baz / foo <= 2)

#e.  Confirm that using the long version in all of the preceding
#exercises performs only the first comparison (that is, the results
#each match the first entries of the previously obtained vectors).

(foo>5)||(foo==2)
(bar<=6)&&(bar!=4)
((foo>5)||(foo==2))&&((bar<=6)&&(bar!=4))
(baz>=14)&&(baz!=15)
(baz/foo>4)||(baz/foo<=2)

### Logicals Are Numbers!

TRUE + TRUE #TRUE equals 1

FALSE - TRUE #FALSE equals 0

T + T + F + T + F + F + T

1 && 1

1 || 0

0 && 1

### logical Subsetting and Extraction

myvec <- c(5,-2.3, 4, 4, 4, 6, 8, 10, 40221,-8)

myvec[c(F, T, F, F, F, F, F, F, F, T)] #extract negative values

myvec < 0

myvec[myvec < 0]

myvec[c(T, F)]

myvec[(myvec > 0) & (myvec < 1000)]

myvec[myvec < 0] <- -200
myvec

which(x = c(T, F, F, T, T)) #returns the indexes corresponding to the positions of all TRUE entries

which(x = myvec < 0)

myvec[-which(x = myvec < 0)] #omit negative entries of myvec

A <-
  matrix(c(0.3, 4.5, 55.3, 91, 0.1, 105.5, -4.2, 8.2, 27.9),
         nrow = 3,
         ncol = 3)
A

A[c(T, F, F), c(F, T, T)]

A < 1

A[A < 1] <- -7
A

A > 25

which(A > 25) #returns de indexes by stacking the columns

which(x = c(A[, 1], A[, 2], A[, 3]) > 25)

which(x = A > 25, arr.ind = T) #easier way to see all entries positions

#### Exercise 4.3 ####

#a.  Store this vector of 10 values: foo <- c(7,5,6,1,2,10,8,3,8,2).
#Then, do the following:
# i. Extract the elements greater than or equal to 5, storing the result as bar.
#ii. Display the vector containing those elements from foo that
#remain after omitting all elements that are greater than or equal to 5.

foo <- c(7, 5, 6, 1, 2, 10, 8, 3, 8, 2)

bar <- foo[foo >= 5] #correct
bar

foo[-which(foo >= 5)] #correct

#b. Use bar from (a)(i) to construct a 2 × 3 matrix called baz, filled in
#a row-wise fashion. Then, do the following:
# i. Replace any elements that are equal to 8 with the squared
#value of the element in row 1, column 2 of baz itself.
#ii. Confirm that all values in baz are now less than or equal to 25
#AND greater than 4.

baz = matrix(bar, 2, 3, byrow = T) #correct
baz

baz[baz == 8] <- (baz[1, 2]) ** 2 #correct
baz

all(baz<=25&baz>4) #correct
#c.  Create a 3 × 2 × 3 array called qux using the following vector of
#18 values: c(10,5,1,4,7,4,3,3,1,3,4,3,1,7,8,3,7,3). Then, do the following:
#  i. Identify the dimension-specific index positions of elements
#that are either 3 OR 4.
#ii. Replace all elements in qux that are less than 3 OR greater
#than or equal to 7 with the value 100.

qux <-
  array(c(10, 5, 1, 4, 7, 4, 3, 3, 1, 3, 4, 3, 1, 7, 8, 3, 7, 3), dim = c(3, 2, 3))
qux

which(x = qux == 3 | qux == 4, arr.ind = T)

qux[qux<3|qux>=7] <- 100
qux
#d. Return to foo from (a). Use the vector c(F,T) to extract every
#second value from foo. In Section 4.1.4, you saw that in some
#situations, you can substitute 0 and 1 for TRUE and FALSE. Can you
#perform the same extraction from foo using the vector c(0,1)?
#Why or why not? What does R return in this case?

foo[c(F, T)]
foo[c(0, 1)]

#### Characters ####

### Creating a String

foo <- 'This is a character string!'
foo
length(foo)
nchar(foo) #count individual number of characters

bar <- "23.3"
bar

bar * 2

'alpha' == 'alpha'
'alpha' != 'beta'
c('alpha', 'beta', 'gamma') == 'beta'

'alpha' <= 'beta'
'gamma' > 'Alpha'

'Alpha' > 'alpha'
'beta' >= 'bEtA'

baz <- "&4 _ 3 **%.? $ymbolic non$en$e ,; "
baz

### Concatenation

qux <- c('awesome', 'R', 'is')
length(qux)
qux

cat(qux[2], qux[3], 'totally', qux[1], '!') #output direcly to the console

paste(qux[2], qux[3], 'totally', qux[1], '!') #returns a usable R object

paste(qux[2], qux[3], 'totally', qux[1], '!', sep = '---')
paste(qux[2], qux[3], 'totally', qux[1], '!', sep = '')


cat("Do you think ", qux[2], " ", qux[3], " ", qux[1], "?", sep = "")

a <- 3
b <- 4.4

cat("The value stored as 'a' is ", a, ".", sep = "") #coerce these itens into strings

paste("The value stored as 'b' is ", b, ".", sep = "")

cat("The result of a+b is ", a, "+", b, "=", a + b, ".", sep = "")

paste("Is ", a + b, " less than 10? That's totally ", a + b < 10, ".", sep =
        "")

### Escape Sequences

'''
\n Starts a newline
\t Horizontal tab
\b Invokes a backspace
\\ Used as a single backslash
\" Includes a double quote
'''

cat("here is a string\nsplit\tto new\b\n\n\tlines")

cat("I really want a backslash: \\\nand a double quote: \"")

setwd("/folder1/folder2/folder3/") #folder separate must use slash

### Substrings and Matching

foo <- "This is a character string!"
substr(x = foo, start = 21, stop = 27)

substr(x = foo, start = 1, stop = 4) <- 'Here'
foo

bar <- "How much wood could a woodchuck chuck"

sub(pattern = "chuck",
    replacement = "hurl",
    x = bar) #search a smaller string pattern

gsub(pattern = "chuck",
     replacement = "hurl",
     x = bar) #search every istance

#### Exercise 4.4 ####

#a.

cat("the quick brown fox\njumped over\n\tthe lazy dogs")

#b.

num1 <- 4
num2 <- 0.75

cat('The result of multiplying', num1, 'by', num2, 'is', num1 * num2)

#c.

'/Users/mymachine/Documents/RBook/'

#d.

bar <- "if a woodchuck could chuck wood"
gsub(pattern = 'wood', replacement = 'metal', bar)

#e.

#### Factors ####

### Identifying Categories

firstname <- c("Liz",
               "Jolene",
               "Susan",
               "Boris",
               "Rochelle",
               "Tim",
               "Simon",
               "Amy")

sex.num <- c(0, 0, 0, 1, 0, 1, 1, 0)

sex.char <-
  c("female",
    "female",
    "female",
    "male",
    "female",
    "male",
    "male",
    "female")

sex.num.fac <- factor(x = sex.num) #create a factor variable.
sex.num.fac

sex.char.fac <- factor(x = sex.char)
sex.char.fac

levels(sex.char.fac) #extract the levels from a factor
levels(sex.num.fac)

levels(sex.num.fac) <- c(1, 2) #relable factor using levels()
sex.num.fac

sex.char.fac[2:5] #factors vectors are subsseted like any other vector
sex.char.fac[c(1:3, 5, 8)]

sex.num.fac == '2'

firstname[sex.char.fac == 'male']

### Defining and ordering Levels

mob <- c("Apr", "Jan", "Dec", "Sep", "Nov", "Jul", "Jul", "Jun")

mob[2]
mob[3]
mob[2] < mob[3]

ms <-
  c("Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec")
mob.fac <- factor(x = mob,
                  levels = ms,
                  ordered = T)
mob.fac

mob.fac[2]
mob.fac[3]
mob.fac[2] < mob.fac[3]

### Combining and Cutting

foo <- c(5.1, 3.3, 3.1, 4)
bar <- c(4.5, 1.2)
c(foo, bar) #this dont work with factor-valued vectors

new.values <-
  factor(
    x = c('Oct', 'Feb', 'Feb'),
    levels = levels(mob.fac),
    ordered = T
  )
new.values

c(mob.fac, new.values)

mob.new <- levels(mob.fac)[c(mob.fac, new.values)]
mob.new.fac <- factor(x = mob.new,
                      levels = levels(mob.fac),
                      ordered = T)
mob.new.fac

Y <- c(0.53, 5.4, 1.5, 3.33, 0.45, 0.01, 2, 4.2, 1.99, 1.01)
br <- c(0, 2, 4, 6)

lab <- c('Small', 'Medium', 'Large')

cut(
  x = Y,
  breaks = br,
  right = F,
  include.lowest = T,
  labels = lab
)

#### Exercise 4.5 ####

#a.

nz.sex <- c(1:20)
nz.sex[1:20] <- 'M'
nz.sex[c(1, 5:7, 14:16)] <- 'F'
nz.sex

nz.party <- c(1:20)
nz.party[1:20] <- 'National'
nz.party[c(1, 4, 12, 15, 16, 19)] <- 'Labour'
nz.party[c(6, 9, 11)] <- 'Greens'
nz.party[c(10, 20)] <- 'Other'
nz.party

#b.

nz.sex.fac <- factor(x = nz.sex, levels = (c('M', 'F')))
nz.sex.fac

nz.party.fac <-
  factor(x = nz.party,
         levels = c('National', 'Labour', 'Greens', 'Maori', 'Other'))
nz.party.fac

#c.

nz.party.fac[nz.sex.fac == 'M']

nz.sex.fac[nz.party.fac == 'National']

#d.

new.survey.sex <- factor(x = c("M", "M", "F", "F", "F", "M"),
                         levels = levels(nz.sex.fac))
new.survey.sex

new.survey.party <- factor(
  x = c("National", "Maori", "Maori",
        "Labour", "Greens", "Labour"),
  levels = levels(nz.party.fac)
)
new.survey.party

nz.sex.fac <- c(nz.sex.fac, new.survey.sex)
nz.sex.fac

nz.party.fac <- c(nz.party.fac, new.survey.party)
nz.party.fac

#e.

lab <- ('Low', 'Moderate', 'High')
br <- c(0, 30, 70, 100)

conf.percent <- c(93,
                  55,
                  29,
                  100,
                  52,
                  84,
                  56,
                  0,
                  33,
                  52,
                  35,
                  53,
                  55,
                  46,
                  40,
                  40,
                  56,
                  45,
                  64,
                  31,
                  10,
                  29,
                  40,
                  95,
                  18,
                  61)

#f.

conf.percent.fac <-
  cut(
    x = conf.percent,
    breaks = br,
    right = T,
    include.lowest = T,
    labels = lab
  )
conf.percent.fac[nz.party.fac == 'Labour']
conf.percent.fac[nz.party.fac == 'National']