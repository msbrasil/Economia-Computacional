# Basic Plotting

## Using plot with Coordinate Vectors

foo <- c(1.1,2,3.5,3.9,4.2)
bar <- c(2,2.2,-1.3,0,0.2)
plot(foo, bar)

baz <- cbind(foo, bar)
baz
plot(baz)

## Graphical Parameters
'''
type: Tells R how to plot the supplied coordinates (for example, 
as stand-alone points or joined by lines or both dots and lines).

main, xlab, ylab: Options to include plot title, the horizontal 
axis label, and the vertical axis label, respectively.

col: Color (or colors) to use for plotting points and lines.

pch: Stands for point character. This selects which character to
use for plotting individual points.

cex: Stands for character expansion. This controls the size of 
plotted point characters.

lty: Stands for line type. This specifies the type of line to use
to connect the points (for example, solid, dotted, or dashed).

lwd: Stands for line width. This controls the thickness of 
plotted lines.

xlim, ylim: This provides limits for the horizontal range and 
vertical  range (respectively) of the plotting region

'''

### Automatic Plot Types

plot(foo,bar, type='l')
plot(foo,bar, type='o')

### Title and Axis Labels

plot(foo,bar,type="b",main="My lovely plot",xlab="x axis label",
     ylab="location y")

plot(foo,bar,type="b",main="My lovely plot\ntitle on two lines",
     xlab="", ylab="")

### Color

plot(foo,bar,type="b",main="My lovely plot",xlab="",ylab="",col=2)

plot(foo,bar,type="b",main="My lovely plot",xlab="",ylab="",
     col="seagreen4")

### Line and Point Appearances

plot(foo,bar,type="b",main="My lovely plot",xlab="",ylab="",
     col=4,pch=8,lty=2,cex=2.3,lwd=3.3)

plot(foo,bar,type="b",main="My lovely plot",xlab="",ylab="",
     col=6,pch=15,lty=3,cex=0.7,lwd=2)

### Plotting Region Limits

plot(foo,bar,type="b",main="My lovely plot",xlab="",ylab="",
     col=4,pch=8,lty=2,cex=2.3,lwd=3.3,xlim=c(-10,5),ylim=c(-3,3))

plot(foo,bar,type="b",main="My lovely plot",xlab="",ylab="",
     col=6,pch=15,lty=3,cex=0.7,lwd=2,xlim=c(3,5),ylim=c(-0.5,0.2))

## Adding Points, Lines, and Text to an Existing Plot

'''
points: Adds points
lines, abline, segments: Adds lines
text: Writes text
arrows: Adds arrows
legend: Adds a legend
'''

x <- 1:20
y <- c(-1.49,3.37,2.59,-2.78,-3.94,-0.92,6.43,8.51,3.41,-8.23,
       -12.01,-6.58,2.87,14.12,9.63,-4.58,-14.78,-11.67,1.17,15.62)

plot(x,y,type='n',main = '')

abline(h=c(-5,5),col="red",lty=2,lwd=2)

segments(x0=c(5,15),y0=c(-5,-5),x1=c(5,15),y1=c(5,5),col="red",
         lty=3, lwd=2)

points(x[y>=5],y[y>=5],pch=4,col="darkmagenta",cex=2)

points(x[y<=-5],y[y<=-5],pch=3,col="darkgreen",cex=2)

points(x[(x>=5&x<=15)&(y>-5&y<5)],y[(x>=5&x<=15)&(y>-5&y<5)],
       pch=19, col="blue")

points(x[(x<5|x>15)&(y>-5&y<5)],y[(x<5|x>15)&(y>-5&y<5)])

lines(x,y,lty=4)

arrows(x0=8,y0=14,x1=11,y1=2.5)

text(x=8,y=15,labels="sweet spot")

legend("bottomleft",
       legend=c("overall process","sweet","standard",
                "too big","too small","sweet y range",
                "sweet x range"),
       pch=c(NA,19,1,4,3,NA,NA),lty=c(4,NA,NA,NA,NA,2,3),
       
       col=c("black","blue","black","darkmagenta","darkgreen",
             "red","red"),
       lwd=c(1,NA,NA,NA,NA,2,2),pt.cex=c(NA,1,1,2,2,NA,NA))

#Exercise 7.1

#a. 

plot(x=0, y=0,type='n', main='Exercise a.', 
     xlim=c(-3,3), ylim=c(7,13))

abline(h=c(13,7),col="gray",lty=2,lwd=2) #linha horizontal

segments(x0=c(-3,3),y0=c(6,6), #linha vertical
         x1=c(-3,3),y1=c(14,14),
         col="gray", lty=2, lwd=2)

arrows(x0=-2.5,y0=12.5,x1=-1,y1=10.5, lwd=2, col='gray')
arrows(x0=-2.5,y0=10,x1=-1,y1=10, lwd=2, col='gray')
arrows(x0=-2.5,y0=7.5,x1=-1,y1=9.5, lwd=2, col='gray')
arrows(x0=2.5,y0=12.5,x1=1,y1=10.5, lwd=2, col='gray')
arrows(x0=2.5,y0=10,x1=1,y1=10, lwd=2, col='gray')
arrows(x0=2.5,y0=7.5,x1=1,y1=9.5, lwd=2, col='gray')

text('SOMETHING \nPROFUND', x=0, y=10 )

#b.

#creating the dataframe

weight <- c(55, 85, 75, 42, 93, 63, 58, 75, 89, 67)
height <- c(161, 185, 174, 154, 188, 178, 170, 167, 181, 178)
sex <- c('female', 'male','male','female','male','male',
         'female','male','male','female')

datab <- data.frame(weight, height, sex)
datab

plot(x=weight, y=height, type = 'p', )

points(datab$sex=='female',datab$sex=='female', pch=8,  col='red', cex=2)
# return to this exercise and try to plot points on different colors

## The ggplot2 Package

### A Quick Plot with qplot

library(ggplot2)

foo <- c(1.1,2,3.5,3.9,4.2)
bar <- c(2,2.2,-1.3,0,0.2)
foo
bar

qplot(foo, bar)

qplot(foo, bar, main='My lovely qplot', xlab='x axis label', 
      ylab='location y')

baz <- plot(foo, bar)
baz #return null

qux <- qplot(foo, bar)
qux

### Setting Appearance COnstants with Geoms

qplot(foo, bar, geom='blank') + geom_point() + geom_line()
#first they plot a current empty object, then plot points and lines

qplot(foo, bar, geom='blank') + geom_point(size=3, shape=6, color='blue') +
  geom_line(color='red', linetype=2)

#try store the qplot first and experiment others geom_points
myqplot <- qplot(foo, bar, geom='blank') + geom_line(color='red', linetype=2)
myqplot + geom_point(size=3, shape=3, color='blue')
myqplot + geom_point(size=3, shape=7, color='green') #shape <= 25

### Aesthetic Mapping with Geoms

x <- 1:20
y <- c(-1.49,3.37,2.59,-2.78,-3.94,-0.92,6.43,8.51,3.41,-8.23,
          -12.01,-6.58,2.87,14.12,9.63,-4.58,-14.78,-11.67,1.17,15.62)

ptype <- rep(NA, length(x=x))
ptype[y>=5] <- 'too_big'
ptype[y<=-5] <- 'too_small'
ptype[(x>=5&x<=15)&(y>-5&y<5)] <- 'sweet'
ptype[(x<5|x>15)&(y>-5&y<5)] <- 'standard'
ptype <- factor(x=ptype)
ptype

qplot(x, y, color=ptype, shape=ptype)

qplot(x, y, color=ptype, shape=ptype) + geom_point(size=4) + #all points size 4
  geom_line(mapping=aes(group=1), color='black', lty=2) +
  geom_hline(mapping=aes(yintercept=c(-5,5)),color="red") + #horizontal lines
  geom_segment(mapping=aes(x=5,y=-5,xend=5,yend=5),color="red",lty=3) +
  geom_segment(mapping=aes(x=15,y=-5,xend=15,yend=5),color="red",lty=3)

# Exercise 7.2

datab

qplot(datab$weight, datab$height, col=sex) + 
  geom_point(shape = 10, size=3)
