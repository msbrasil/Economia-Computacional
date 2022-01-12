#Lists and Dataframes

#### Lists of Objects ####

### Definition and Component Access

foo <- list(matrix(data = 1:4, nrow=2, ncol=2), c(T,F,T,T), 'hello')
foo

length(foo)
foo[3]

foo[[1]] + 5.5 #subsetting a list

cat(foo[[3]], 'you!')

### Naming

names(foo) <- c('mymatrix','mylogicals','mystring') #adding names to the objects
foo

foo$mymatrix

#creating a list with names already 
baz <- list(tom=c(foo[[2]],T,T,T,F),dick="g'day mate",harry=foo$mymatrix*2)
baz

names(baz) #how to see the name of objects

### Nesting

baz$bobby <- foo #lists can have lists
baz

baz$bobby$mylogicals #seeing an object in list at list

#### Exercise 5.1 ####

# a.Create a list that contains, in this order, a sequence of 20 evenly
# spaced numbers between −4 and 4; a 3 × 3 matrix of the logical
# vector c(F,T,T,T,F,T,T,F,F) filled column-wise; a character vector
# with the two strings "don" and "quixote"; and a factor vector containing 
# the observations c("LOW","MED","LOW","MED","MED","HIGH").
# Then, do the following:
#   i. Extract row elements 2 and 1 of columns 2 and 3, in that
# order, of the logical matrix.
# ii. Use sub to overwrite "quixote" with "Quixote" and "don" with
# "Don" inside the list. Then, using the newly overwritten list
# member, concatenate to the console screen the following
# statement exactly: (in book)
# iii. Obtain all values from the sequence between −4 and 4 that
# are greater than 1.
# iv. Using which, determine which indexes in the factor vector are
# assigned the "MED" level.

list.a <- list(seq(from=-4, to=4, length.out=20), 
               matrix(c(F,T,T,T,F,T,T,F,F), nrow=3, ncol=3), 
               c('don','quixote'), 
               factor(x=c("LOW","MED","LOW","MED","MED","HIGH"), 
                              levels = c('LOW','MED','HIGH')))
list.a #correct


list.a[[3]][1] <- sub(pattern = 'd', replacement = 'D', x = list.a[[3]][1])
list.a[[3]][2] <- sub(pattern = 'q', replacement = 'Q', x = list.a[[3]][2])
list.a #correct

cat("WIndmills! ATTACK! \n \t -\\",list.a[[3]][1],list.a[[3]][2],"/-") #correct
 
# b.Create a new list with the factor vector from (a) as a component named "facs"; 
# the numeric vector c(3,2.1,3.3,4,1.5,4.9) as a
# component named "nums"; and a nested list comprised of the first
# three members of the list from (a) (use list slicing to obtain this),
# named "oldlist". Then, do the following:
#   i. Extract the elements of "facs" that correspond to elements of
# "nums" that are greater than or equal to 3.
# ii. Add a new member to the list named "flags". This member
# should be a logical vector of length 6, obtained as a twofold
# repetition of the third column of the logical matrix in the
# "oldlist" component.
# iii. Use "flags" and the logical negation operator ! to extract the
# entries of "num" corresponding to FALSE.
# iv. Overwrite the character string vector component of "oldlist"
# with the single character string "Don Quixote".

newlist <- list(facs = list.a[[4]], 
                num = c(3,2.1,3.3,4,1.5,4.9),
                oldlist = list.a[1:3])
newlist #correct
#i.

newlist$facs[newlist$num>=3] #correct

#ii.
newlist$facs

newlist$flags <- c(rep(newlist$oldlist[[2]][,3], time=2))
newlist$flags #correct

#iii.

newlist$num[!newlist$flags] #correct

#iv.

newlist$oldlist[[3]] <- "Don Quixote" 
newlist$oldlist[[3]] #correct

#### Data Frames ####

### Construction

#to create a data frame from scratch, use the  data.frame function
mydata <- data.frame(person=c("Peter","Lois","Meg","Chris","Stewie"), 
                     age=c(42,40,17,14,1),
                     sex=factor(c("M","F","F","M","M")))
mydata

mydata[2,2] #extract portions of data specifying row and column index

mydata[3:5, 3] #rows: from 3 to 5, column: 3

mydata[,c(3,1)] #all rows, the third and first column

mydata$age #can use the name of vectors

mydata$age[2]

#reporting the size of a data frame

nrow(mydata) #just rows
ncol(mydata) #just columns
dim(mydata)  #rows and columns

mydata$person

#To prevent this automatic conversion of character strings to factors set the 
#optional argument stringsAsFactors to FALSE

mydata <- data.frame(person=c("Peter","Lois","Meg","Chris","Stewie"), 
                     age=c(42,40,17,14,1),
                     sex=factor(c("M","F","F","M","M")),
                     stringsAsFactors = F)
mydata
mydata$person

### Adding Data Columns and Combining Data Frames

newrecord <- data.frame(person='Brian',
                        age=7, 
                        sex=factor("M", levels = levels(mydata$sex)))
newrecord

mydata <- rbind(mydata, newrecord)
mydata

funny <- c("High","High","Low","Med","High","Med")
funny <- factor(x=funny, levels=c('High','Med','Low'))
funny

mydata <- cbind(mydata, funny)
mydata

mydata$age.mon <- mydata$age*12 #another way to include a new column
mydata

### Logical Record Subsets
#examining all records corresponding to male
mydata$sex == 'M' #identify the positions

mydata[mydata$sex == 'M',] #get the male-only subset

mydata[mydata$sex == 'M',-3] #omitting the sex column with negative index

mydata[mydata$sex == 'M',c('person','age','funny','age.mon')] #using char names

mydata[mydata$age>10|mydata$funny=='High',] #more than 10y old OR high funny degree

mydata[mydata$age>45,]

#### Exercise 5.2 ####

# a. Create and store this data frame as dframe in your R workspace: (in book)
# The variables person, sex, and funny should be identical in
# nature to the variables in the mydata object studied throughout
# Section 5.2. That is, person should be a character vector, sex
# should be a factor with levels F and M, and funny should be a
# factor with levels Low, Med, and High.

dframe <- data.frame(person=c("Stan","Francine","Steve","Roger","Hayley","Klaus"),
                   sex=factor(c("M","F","M","M","F","M")),
                   funny=factor(c("High","Med","Low","High","Med","Med")))
dframe      #correct
dframe$sex  #correct              
dframe$person #correct


# b. Stan and Francine are 41 years old, Steve is 15, Hayley is 21, and
# Klaus is 60. Roger is extremely old—1,600 years. Append these
# data as a new numeric column variable in dframe called age.

dframe$age <- c(41,41,15,1600,21,60)
dframe #correct

# c.Use your knowledge of reordering the column variables based
# on column index positions to overwrite dframe, bringing it in line
# with mydata. That is, the first column should be person, the second
# column age, the third column sex, and the fourth column funny.

dframe[,c(1,2,3,4)] <- dframe[,c(1,4,2,3)]
dframe
names(dframe) <- c('person','age','sex','funny')
dframe  

# d. Turn your attention to mydata as it was left after you included the
# age.mon variable in Section 5.2.2. Create a new version of mydata
# called mydata2 by deleting the age.mon column. 

mydata
mydata2 <- mydata[,-5]
mydata2 #correct

# e.  Now, combine mydata2 with dframe, naming the resulting object
# mydataframe.

mydataframe <- rbind(dframe, mydata2)
mydataframe #correct

# f.Write a single line of code that will extract from mydataframe just
# the names and ages of any records where the individual is female
# and has a level of funniness equal to Med OR High.

mydataframe[mydataframe$sex=='F'&(mydataframe$funny=='High'|mydataframe$funny=='Med'),c("person","age")]
#correct

# g.Use your knowledge of handling character strings in R to extract
# all records from mydataframe that correspond to people whose
# names start with S. 

mydataframe[substr(mydataframe$person, start = 1, stop=1)=='S',] #correct
