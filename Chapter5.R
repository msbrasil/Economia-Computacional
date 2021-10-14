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

