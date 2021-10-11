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

myvec <- c(5, -2.3, 4, 4, 4, 6, 8, 10, 40221, -8)

myvec[c(F,T,F,F,F,F,F,F,F,T)] #extract negative values

myvec < 0

myvec[myvec<0]

myvec[c(T, F)]

myvec[(myvec>0)&(myvec<1000)]

myvec[myvec<0] <- -200
myvec

which(x=c(T, F, F, T, T)) #returns the indexes corresponding to the positions of all TRUE entries

which(x=myvec<0)

myvec[-which(x=myvec<0)] #omit negative entries of myvec

A <- matrix(c(0.3,4.5,55.3,91,0.1,105.5,-4.2,8.2,27.9),nrow=3,ncol=3)
A

A[c(T, F, F), c(F, T, T)]

A<1

A[A<1] <- -7
A

A > 25

which(A>25) #returns de indexes by stacking the columns

which(x=c(A[,1],A[,2],A[,3])>25)

which(x=A>25, arr.ind = T) #easier way to see all entries positions

# Exercise 4.3

#a. 
foo <- c(7, 5, 6, 1, 2, 10, 8, 3, 8, 2)

bar <- foo[foo>=5]
bar

foo[-which(foo>=5)]

#b.

baz = matrix(bar, 2, 3, byrow = T)
baz

baz[baz==8] <- (baz[1,2])**2
baz

baz[(baz<=25)&(baz>4)]

#c.

qux <- array(c(10,5,1,4,7,4,3,3,1,3,4,3,1,7,8,3,7,3), dim = c(3,2,3))
qux

which(x=qux==4, arr.ind = T)

#d.

foo[c(F, T)]

## Characters

### Creating a String

foo <- 'This is a character string!'
foo
length(foo)
nchar(foo) #count individual number of characters

bar <- "23.3"
bar

bar*2

'alpha'=='alpha'
'alpha'!='beta'
c('alpha','beta','gamma')=='beta'

'alpha'<='beta'
'gamma'>'Alpha'

'Alpha'>'alpha'
'beta'>='bEtA'

baz <- "&4 _ 3 **%.? $ymbolic non$en$e ,; "
baz

### Concatenation

qux <- c('awesome','R','is')
length(qux)
qux

cat(qux[2], qux[3],'totally',qux[1],'!') #output direcly to the console

paste(qux[2], qux[3],'totally',qux[1],'!') #returns a usable R object

paste(qux[2], qux[3],'totally',qux[1],'!', sep='---')
paste(qux[2], qux[3],'totally',qux[1],'!', sep = '')


cat("Do you think ",qux[2]," ",qux[3]," ",qux[1],"?",sep="")

a <- 3
b <- 4.4

cat("The value stored as 'a' is ",a,".",sep="") #coerce these itens into strings

paste("The value stored as 'b' is ",b,".",sep="")

cat("The result of a+b is ",a,"+",b,"=",a+b,".",sep="")

paste("Is ",a+b," less than 10? That's totally ",a+b<10,".",sep="")

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
substr(x=foo,start=21,stop=27)

substr(x=foo,start=1,stop=4) <- 'Here'
foo

bar <- "How much wood could a woodchuck chuck"     

sub(pattern="chuck",replacement="hurl",x=bar) #search a smaller string pattern

gsub(pattern="chuck",replacement="hurl",x=bar) #search every istance

# Exercise 4.4

#a. 

cat("the quick brown fox\njumped over\n\tthe lazy dogs")

#b.

num1 <- 4
num2 <- 0.75

cat('The result of multiplying', num1,'by', num2,'is',num1*num2)

#c.

'/Users/mymachine/Documents/RBook/'

#d.

bar <- "if a woodchuck could chuck wood"
gsub(pattern='wood', replacement = 'metal',bar)

#e.

## Factors

