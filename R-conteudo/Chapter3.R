#Matrices and Arrays

#### Defining a Matrix ####

A <-
  matrix(data = c(-3, 2, 893, 0.17),
         #command to create a matrix
         nrow = 2,
         ncol = 2)
A

### Filling direction

matrix(
  data = c(1, 2, 3, 4, 5, 6),
  nrow = 2,
  ncol = 3,
  byrow = FALSE #fill the matrix column-by-column. Default is row-by-row
)

matrix(
  data = c(1, 2, 3, 4, 5, 6),
  nrow = 2,
  ncol = 3,
  byrow = TRUE
)

### Row and column bindings

rbind(1:3, 4:6) #create a matrix from 2 vectors or more. r before bind mean bind by row.

cbind(c(1, 4), c(2, 5), c(3, 6)) #the c before bind mean by column

### Matrix dimensions

mymat <- rbind(c(1, 3, 4), 5:3, c(100, 20, 90), 11:13)
mymat

dim(mymat) #provide the dimensions of matrix stored in your workspace

nrow(mymat) #rows

ncol(mymat) #columns

dim(mymat)[2] #second term of dimensions(columns)

#### Subsetting ####

A <-
  matrix(c(0.3, 4.5, 55.3, 91, 0.1, 105.5,-4.2, 8.2, 27.9),
         nrow = 3,
         ncol = 3) #matrix 3x3 to make examples
A

A[3, 2] #look the third row and give me the element of second column

### Row, Columns and Diagonal Extractions

A[, 2] #entire column

A[1, ] #entire row

A[2:3, ] #row 2 and 3

A[, c(3, 1)] #third and second column

A[c(3, 1), 2:3]

diag(x = A) #identify diagonal values of a square matrix starts in A[1, 1]

### Omitting and Overwriting

A[, -2] #negative indexes delete or omit matrix elements

A[-1, 3:2]

A[-1,-2]

A[-1,-c(2, 3)]

B <- A

B[2, ] <- 1:3 #overwrite second row with sequence 1,2,3
B

B[c(1, 3), 2] <- 900
B

B[, 3] <- B[3, ]
B

B[c(1, 3), c(1, 3)] <- c(-7, 7)
B

B[c(1, 3), 2:1] <- c(65,-65, 88,-88)
B

diag(B) <- rep(0, times = 3)
B

#### Exercise 3.1 ####

#a. Construct and store a 4 × 2 matrix that’s filled row-wise with the
#values 4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6, and 6.5, in that order.


matrixA <-
  matrix(
    c(4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6, 6.5),
    nrow = 4,
    ncol = 2,
    byrow = TRUE
  )
matrixA #(correct)

#b. Confirm the dimensions of the matrix from (a) are 3 × 2 if you
#remove any one row.

dim(matrixA[-1, ]) #(correct)


#c. Overwrite the second column of the matrix from (a) with that
#same column sorted from smallest to largest.

matrixA[, 2] <- sort(matrixA[, 2])
matrixA #(correct)


#d.What does R return if you delete the fourth row and the first column from (c)?
#Use matrix to ensure the result is a single-column matrix, rather than a vector.

matrix(matrixA[-4, -1]) #(correct)

#e. Store the bottom four elements of (c) as a new 2 × 2 matrix.

matrixE <- matrix(matrixA[-c(1, 2), ], 2, 2)
matrixE #(correct)

#f. Overwrite, in this order, the elements of (c) at positions (4,2),
#(1,2), (4,1), and (1,1) with −1/2 of the two values on the diagonal of (e).

matrixA[c(4, 1), 2:1] <- -0.5 * diag(matrixE)
matrixA #(correct)

#### Matrix Operations and Algebra ####

### Matrix Transpose

A <- rbind(c(2, 5, 2), c(6, 1, 4))
A

t(A) #transpose function

t(t(A))

### Identity Matrix

A <- diag(x = 3)
A

### Scalar Multiple of a Matrix

A <- rbind(c(2, 5, 2), c(6, 1, 4))
A
a <- 2
a * A

### Matrix Addition and Subtraction

A <- cbind(c(2, 5, 2), c(6, 1, 4))
A

B <- cbind(c(-2, 3, 6), c(8.1, 8.2,-9.8))
B
A - B

### Matrix multiplication

A <- rbind(c(2, 5, 2), c(6, 1, 4))
dim(A)
B <- cbind(c(3,-1, 1), c(-3, 1, 5))
dim(B)

A %*% B

B %*% A

### Matrix inversion

A <- matrix(data = c(3, 4, 1, 2),
            nrow = 2,
            ncol = 2)
A

solve(A)

A %*% solve(A)

#### Exercise 3.2 ####

#a. Calculate the following: (in book)



A <- cbind(c(1, 2, 7), c(2, 4, 6))
A

B <- matrix(seq(10, 60, by = 10), 3, 2, byrow = TRUE)
B

(2 / 7) * (A - B) #(correct)

#b. Store these two matrices: (in book)

A <- matrix(c(1, 2, 7), ncol = 1)
B <- matrix(c(3, 4, 8), ncol = 1)

A %*% B #not possible

t(A) %*% B #possible (correct)

t(B) %*% (A %*% t(A)) #possible (correct)

(A %*% t(A)) %*% t(B) #not possible

solve((B %*% t(B)) + (A %*% t(A)) - 100 * matrix(diag(x = 3))) #not possible

#c. For (matrix in book) confirm that A−1·A −I4 provides a 4 × 4 matrix of zeros.

A <- diag(x = c(2, 3, 5,-1))
A

solve(A) %*% A - diag(x = 4) #(correct)

#### Multidimensional Arrays ####

### Definition

AR <-
  array(data = 1:24, dim = c(3, 4, 2)) #dim argument: rows, columns, layers
AR

BR <-
  array(data = rep(1:24, times = 3), dim = c(3, 4, 2, 3)) #row, column, layer, block
BR

### Subsets, Extractions, and Replacements

AR[2, , 2]

AR[2, c(3, 1), 2]

AR[1, , ]

BR[2, 1, 1, 3]

BR[1, , , 1]

BR[, , 2, ]

BR[3:2, 4, , ]

BR[2, , 1, ]

#### Exercise 3.3 ####

#a.Create and store a three-dimensional array with six layers of a
#4 × 2 matrix, filled with a decreasing sequence of values between
#4.8 and 0.1 of the appropriate length.

arrayA <-
  array(seq(
    from = 4.8,
    to = 0.1,
    length.out = 48
  ), dim = c(4, 2, 6))
arrayA #(correct)

#b. Extract and store as a new object the fourth- and first-row elements, 
#in that order, of the second column only of all layers of (a).


extractA <- arrayA[c(4, 1), 2, ]
extractA #(correct)

#c.Use a fourfold repetition of the second row of the matrix formed
#in (b) to fill a new array of dimensions 2 × 2 × 2 × 3.

matrixC <- array(rep(extractA[2,], times = 4), dim = c(2, 2, 2, 3))
matrixC #(correct)

#d.  Create a new array comprised of the results of deleting the sixth
#layer of (a).

arrayD <- arrayA[, , -6]
arrayD #(correct)

#e. Overwrite the second and fourth row elements of the second
#column of layers 1, 3, and 5 of (d) with −99.

arrayD[c(2, 4), 2, c(1, 3, 5), ] <- -99
arrayD #(correct)