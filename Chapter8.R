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


