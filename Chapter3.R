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

B <- A

B[2,] <- 1:3 #overwrite second row with sequence 1,2,3
B

B[c(1, 3), 2] <- 900
B

B[,3] <- B[3,]
B

B[c(1, 3), c(1, 3)] <- c(-7, 7)
B

B[c(1,3), 2:1] <- c(65, -65, 88, -88)
B

diag(B) <- rep(0, times=3)
B

### Exercise 3.1

#a. 

matrixA <- matrix(c(4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6, 6.5), nrow=4, ncol=2)
matrixA

#b.

dim(matrixA[-1,])

#c.

matrixA[,2] <- sort(matrixA[,2])
matrixA

#d.

matrix(matrixA[-4,-1])

#e.

matrixE <- matrix(matrixA[-c(1,2),], 2, 2)
matrixE

#f. 
diag(matrixA)*-1/2 #dafuck

## Matrix Operations and Algebra

### Matrix Transpose

A <- rbind(c(2, 5, 2), c(6, 1, 4))
A

t(A) #transpose function

t(t(A)) 

### Indentity Matrix

A <- diag(x=3)
A

### Scalar Multiple of a Matrix

A <- rbind(c(2, 5, 2), c(6, 1, 4))
A
a <- 2
a*A

### Matrix Addition and Subtraction

A <- cbind(c(2, 5, 2), c(6, 1, 4))
A

B <- cbind(c(-2, 3, 6), c(8.1, 8.2, -9.8))
B
A-B

### Matrix multiplication

A <- rbind(c(2, 5, 2), c(6, 1, 4))
dim(A)
B <- cbind(c(3, -1, 1), c(-3, 1, 5))
dim(B)

A%*%B

B%*%A

### Matrix inversion

A <- matrix(data=c(3,4,1,2),nrow=2,ncol=2)
A

solve(A)

A%*%solve(A)

### Exercise 3.2

#a.

(2/7) * (matrix(1:6, nrow=3, ncol=2) - matrix(seq(from=10, to=60, by = 10), nrow=3, ncol=2)) 

#b.

A <- matrix(c(1, 2, 7), ncol = 1)
B <- matrix(c(3, 4, 8), ncol = 1)

A%*%B #not possible

t(A)%*%B #possible

t(B)%*%(A%*%t(A)) #possible

(A%*%t(A))%*%t(B) #not possible

solve((B%*%t(B))+(A%*%t(A)) - 100*matrix(diag(x=3))) #not possible

#c.

A <- diag(x=c(2, 3, 5, -1))
A

solve(A) %*% A - diag(x=4)

## Multidimensional Arrays

### Definition

AR <- array(data = 1:24, dim=c(3,4,2)) #dim argument: rows, columns, layers
AR

BR <- array(data=rep(1:24, times=3), dim=c(3,4,2,3)) #row, column, layer, block
BR

### Subsets, Extractions, and Replacements

AR[2,,2]

AR[2,c(3,1),2]

AR[1,,]

BR[2, 1, 1, 3]

BR[1,,,1]

BR[,,2,]

BR[3:2, 4,,]

BR[2,,1,]

# Exercise 3.3

#a.

arrayA <- array(seq(from=4.8, to=0.1, length.out=144), dim=c(4, 2, 6, 3))
arrayA

#b.

extractA <- arrayA[c(4,1), 2,,]
extractA

#c.

#d.

#e.










































































