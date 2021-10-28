# Reading and Writing Files

## R-Ready Data Sets

data() #show all datasets in Rbase

### Built-in Data Sets

library(help='datasets') #show datasets summary

?ChickWeight #help file for dataset

ChickWeight[1:15,]

### Contributed Data Sets

library(tseries)

library(help='tseries')

data(ice.river) #load data function

ice.river[1:5,]

## Reading in External Data Files

### The Table Format

#header is the first line of table. Provide names for each column of data.
#Delimiter is a character used to separate entries in each line.
#Missing value will be turn into NA when R read them.

mydatafile <- read.table(file = 'mydatafile.txt', header = T, 
                         sep = ' ', na.strings = '*', 
                         stringsAsFactors = F)
mydatafile

file.choose() #open window to select file and return the path to

mydatafile$sex <- as.factor(mydatafile$sex)
mydatafile$funny <- as.factor(mydatafile$funny)
mydatafile$funny


### Spreadsheet Workbooks

spread <- read.csv(file='spreadsheetfile.csv', header=F, sep=';', 
                   stringsAsFactors = T)
spread

### Web-Based Files

dia.url <- "http://www.amstat.org/publications/jse/v9n2/4cdata.txt"
diamonds <- read.table(dia.url) #404 not fund
names(diamonds)
diamonds[1:5,]

## Writing Out Data Files and Plots

### Data Sets

write.table(mydatafile, file='somemewfile.txt', sep='@', na='??',
            quote=F, row.names=F)
#object to write on new file
#quote encapsule non-numeric objcects in ""

### Plots and Graphics Files

jpeg(filename = 'myjpegplot.jpeg', width = 600, height = 600) #opened file
plot(1:5,6:10,ylab="a nice ylab",xlab="here's an xlab",
      main="a saved .jpeg plot")
points(1:5, 10:6, cex=2, pch=4, col=2)
dev.off() #you must explicity close de file device with dev.off()

pdf(file='mypdfplot.pdf', width = 5, height = 5)
plot(1:5,6:10,ylab="a nice ylab",xlab="here's an xlab",
     main="a saved .jpeg plot")
points(1:5, 10:6, cex=2, pch=4, col=2)
dev.off()

#ggplot2 can do the same thing with ggsave() function
library(ggplot2)

foo <- c(1.1,2,3.5,3.9,4.2)
bar <- c(2,2.2,-1.3,0,0.2)

qplot(foo, bar, geom='blank') + 
  geom_point(size=3, shape=8, color='darkgreen') + 
  geom_line(color='orange', linetype=4)

ggsave(filename='mypngqplot.png')

## Ad Hoc Object Read/Write Operations

somelist <- list(foo=c(5,2,45),
                 bar=matrix(data=c(T,T,F,F,F,F,T,F,T),nrow=3,ncol=3),
                 baz=factor(c(1,2,2,3,1,1,3),levels=1:3,ordered=T))

somelist

dput(somelist, file='myRobject.txt') #save what is write in somelist object

newobject <- dget('myRobject.txt') #get the save object
newobject

# Exercise 8.1

#a.

data(quakes)
quakes$mag
maggoe5 <- quakes[quakes$mag>=5,]
maggoe5

write.table(maggoe5, file='q5.txt',sep='!', row.names=F)

q5.dframe <- read.table(file='q5.txt', sep = '!')
q5.dframe

#b.
library(car)
data("Duncan")
x <- Duncan$education
y <- Duncan$income

plot(x, y, geom='blank', xlab='Education',ylab='Income', 
                          xlim=c(0, 100), ylim=c(0, 100), type='p') +
  points(x[y<=80],y[y<=80],col="black") +
  points(x[y>80], y[y>80], col='blue')

#work this later.
