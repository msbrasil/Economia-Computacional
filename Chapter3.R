#Matrices and Arrays

A <- matrix(data=c(-3, 2, 893, 0.17), nrow = 2, ncol = 2) #command to create a matrix
A

### Filling direction

matrix(data=c(1, 2, 3, 4, 5, 6), nrow=2, ncol=3, byrow = FALSE) #fill the matrix column-by-column. Default is row-by-row

matrix(data=c(1, 2, 3, 4, 5, 6), nrow=2, ncol=3, byrow = TRUE)

### Row and column bindings 

rbind(1:3, 4:6) #create a matrix from 2 vectors or more. r before bind mean bind by row. Only use if the vectors are the same length

cbind(c(1, 4), c(2,5), c(3,6))

### Matrix dimensions

mymat <- rbind(c(1, 3, 4), 5:3, c(100, 20, 90), 11:13)
mymat

dim(mymat) #provide the dimensions of matrix stored in your workspace

nrow(mymat)

ncol(mymat)

dim(mymat)[2]

## Subsetting

A <- matrix(c(0.3, 4.5, 55.3, 91, 0.1, 105.5, -4.2, 8.2, 27.9), nrow = 3, ncol = 3) #matrix 3x3
A

A[3,2] #look the third row and give me the element of second column

### Row, Columns and Diagonal Extractions

A[,2] #entire column

A[1,] #entire row

A[2:3,] #row 2 and 3

A[, c(3,1)] #third and second column

A[c(3, 1), 2:3]

diag(x=A) #identify diagonal values of a square matrix starts in A[1, 1]

### Omitting and Overwriting

A[,-2] #negative indexes delete or omit matrix elements

A[-1, 3:2]

A[-1, -2]

A[-1, -c(2,3)]







