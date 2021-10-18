#Lists and Dataframes

## Lists of Objects

### Definition and Component Access

foo <- list(matrix(data = 1:4, nrow=2, ncol=2), c(T,F,T,T), 'hello')
foo
length(foo)
foo[3]

foo[[1]] + 5.5

cat(foo[[3]], 'you!')

### Naming

names(foo) <- c('mymatrix','mylogicals','mystring') #adding names to the objects
foo

foo$mymatrix

baz <- list(tom=c(foo[[2]],T,T,T,F),dick="g'day mate",harry=foo$mymatrix*2)
baz

names(baz)

### Nesting

baz$bobby <- foo
baz

# Exercise 5.1

#a.

list.a <- list(seq(from=-4, to=4, length.out=20), 
               matrix(c(F,T,T,T,F,T,T,F,F), nrow=3, ncol=3), 
               c('don','quixote'), 
               factor(x=c("LOW","MED","LOW","MED","MED","HIGH"), 
                              levels = c('LOW','MED','HIGH')))
list.a

list.a <- sub(pattern = 'don', list.a, replacement = 'Don')
list.a <- sub(pattern = 'quixote', list.a, replacement = 'Quixote')
list.a

cat("WIndmills! ATTACK! \n \t -\\",list.a[3[1]],list.a[3[2]],"/-")

#### Can do it rigth now. Finish the exercises later.

## Data Frames

### Construction

#to create a dataframe from scrath, use the  data.frame function
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

nrow(mydata)
ncol(mydata)
dim(mydata)

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

### Exercise 5.2

#a.

df.a <- data.frame(person=c("Stan","Francine","Steve","Roger","Hayley","Klaus"),
                   sex=factor(c("M","F","M","M","F","M")),
                   funny=factor(c("High","Med","Low","High","Med","Med")))
df.a
df.a$sex                   
df.a$person

#b.

age <- c(41, 41, 15, 21, 60, 1600)

df.a <- cbind(df.a, age)
df.a

#c.

df.a[,c(1,2,3,4)] <- df.a[,c(1,4,2,3)]
df.a
names(df.a) <- c('person','age','sex','funny')
df.a  

d.
mydata
mydata2 <- mydata[,-5]
mydata2

mydataframe <- rbind(df.a, mydata2)

#f.

mydataframe[mydataframe$sex=='F'&mydataframe$funny=='High'|mydataframe$funny=='Med',]

#g.

mydataframe[substr(mydataframe$person, start = 1, stop=1)=='S',]
