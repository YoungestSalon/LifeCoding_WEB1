## ----setup, include=FALSE, cache=FALSE-----------------------------------
library(knitr)
## set global chunk options
opts_chunk$set(fig.path='figure/manual-', cache.path='cache/manual-', fig.align='center', fig.show='hold', par=TRUE)
## I use = but I can replace it with <-; set code/output width to be 68
options(formatR.arrow=TRUE, tidy=FALSE, width=50, digits=4)
## tune details of base graphics (http://yihui.name/knitr/hooks)
#knit_hooks$set(par=function(before, options, envir){
#if (before && options$fig.show!='none') par(mar=c(4,4,.1,.1),cex.lab=.95,cex.axis=.9,mgp=c(2,.7,0),tcl=-.3)
#})

## ----wc1,comment=NA,message=FALSE,out.width="2in",size='scriptsize',warning=FALSE----
library(tm)

library(wordcloud)

wordcloud(c(letters, LETTERS, 0:9),seq(1, 1000, len = 62))


## ----plot1, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
data(iris)
plot(iris$Sepal.Length,iris$Sepal.Width)

## ----plot2, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
plot(iris$Sepal.Length,iris$Sepal.Width, xlab="sepal length", 
     ylab="sepal width",main='Iris')

## ----plot3, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
plot(iris$Sepal.Length,iris$Sepal.Width, xlab="sepal length", 
     ylab="sepal width", main="Iris", pch='+',cex=2,col='red')

## ----plot4, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
plot(iris$Sepal.Length,iris$Sepal.Width, xlab="sepal length", 
     ylab="sepal width", main="Iris", type='l')

## ----plot5, comment=NA, echo=TRUE, out.width= "3.5in",out.height='2in',size='scriptsize'----
oldpar <- par(mfrow=c(1, 2))    # par문은 이전 설정을 반환함
plot(iris$Sepal.Length,iris$Sepal.Width, xlab="sepal length", 
     ylab="sepal width", main="Iris", type='b')
plot(iris$Sepal.Length,iris$Sepal.Width, xlab="sepal length", 
     ylab="sepal width", main="Iris", type='o')
par(oldpar)   # 이전 설정 회복

## ----plot6, comment=NA, echo=TRUE, out.width= "3in",out.height='2in',size='scriptsize'----
attach(iris)
plot(Sepal.Length , Sepal.Width , cex=1.5, pch=20, xlab="length",
     ylab="width", main="Iris")
points(Petal.Length , Petal.Width , cex=1.5, pch="+", col="tomato")

## ----plot7, comment=NA, echo=TRUE, out.width= "3in",out.height='2in',size='scriptsize'----
x <- seq(0, 2*pi, 0.1)
y <- sin(x)
plot(x, y)
lines(x, y, col="purple")

## ----plot8, comment=NA, echo=TRUE, out.width= "3in",out.height='2in',size='scriptsize'----
plot(iris$Sepal.Length,iris$Sepal.Width, xlab="sepal length", 
     ylab="sepal width", main="Iris")
text(iris$Sepal.Length,iris$Sepal.Width, pos=4, cex=0.5 ) 

## ----plot9, comment=NA, echo=TRUE, out.width= "3in",out.height='2in',size='scriptsize'----
plot(iris$Sepal.Length , iris$Sepal.Width , cex=1.5, pch=20, 
     xlab="length", ylab="width", main="Iris")
points(iris$Petal.Length , iris$Petal.Width , cex=1.5, pch="+", 
       col="tomato")
legend("topright", legend=c("Sepal", "Petal"), pch=c(20, 43), 
       col=c("black", "tomato"), bg="ivory")

## ----plot10, comment=NA, echo=TRUE, out.width= "3in",out.height='2in',size='scriptsize'----
pairs(~Sepal.Width + Sepal.Length + Petal.Width + Petal.Length, 
      data=iris, col=c("red", "green", "blue")[iris$Species])


## ----ggplot1, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize',warning=FALSE----
library(ggplot2)
library(dplyr)

## ----ggplot2, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
str(mpg)

## ----ggplot3, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
ggplot(mpg, aes(x = displ, y= hwy)) + geom_point()

## ----ggplot4, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
ggplot(mpg, aes(displ,hwy)) + geom_point()

## ----ggplot5, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
ggplot(mpg, aes(displ, cty, colour = class)) + geom_point()

## ----ggplot6, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
ggplot(mpg, aes(displ, cty, shape = drv)) + geom_point()

## ----ggplot7, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
ggplot(mpg, aes(displ, cty, size = cyl)) + geom_point()

## ----ggplot7_1, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
ggplot(mpg, aes(displ, cty, alpha = cyl)) + geom_point()

## ----ggplot8, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
ggplot(mpg, aes(displ, hwy)) + geom_point(aes(colour="blue"))

## ----ggplot9, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
ggplot(mpg, aes(displ, hwy)) + geom_point(colour="blue")

## ----ggplot10, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
ggplot(mpg, aes(displ,hwy)) + geom_point() + facet_wrap(~class)

## ----ggplot11, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
ggplot(mpg, aes(displ,hwy)) +
  geom_point(data=mpg[,c(3,9)], colour="grey70") +
  geom_point(aes(colour=class)) +
  facet_wrap(~class)

## ----ggplot12, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
ggplot(mpg, aes(displ, hwy))+ geom_point() + geom_smooth()

## ----ggplot17, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
ggplot(mpg, aes(cty, hwy)) +
  geom_point(alpha=1/3) +
  xlim(5,40) + ylim(10,50)

## ----ggplot18, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
ggplot(mpg, aes(cty, hwy)) +
  geom_point(alpha=1/3) +
  xlab("city driving (mpg)") +
  ylab("hightway driving (mpg)")

## ----ggplot19, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
ggplot(mpg, aes(cty, hwy)) +
  geom_point(alpha=1/3) +
  xlab(NULL) + ylab(NULL)

## ----ggplot20, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
pdf("output1.pdf", width=6, height=6)
ggplot(mpg, aes(displ, cty)) + geom_point()
dev.off()

## ----ggplot21, comment=NA, echo=TRUE, out.width= "1.5in",size='scriptsize'----
ggplot(mpg, aes(displ,cty)) + geom_point()
ggsave("output2.pdf")

## ----barplot1, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
ggplot(mpg, aes(drv)) + geom_bar()

## ----barplot2, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
ggplot(mpg, aes(drv,..prop.., group=1)) + geom_bar()

## ----barplot3, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
ggplot(mpg, aes(drv,color=drv)) + geom_bar()

## ----barplot4, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
ggplot(mpg, aes(drv,fill=drv)) + geom_bar()

## ----barplot5, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
ggplot(mpg, aes(drv,fill=trans)) + geom_bar()

## ----pieplot1, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
ggplot(mpg, aes(x=1, fill=drv)) +
 geom_bar() +
 coord_polar(theta = "y") +
 theme_void()

## ----hist1, comment=NA, echo=TRUE, message=FALSE,out.width= "2in",size='scriptsize'----
ggplot(mpg, aes(hwy)) + geom_histogram()

## ----hist2, comment=NA, message=FALSE,out.width= "4in",out.height="2.5in",size='scriptsize'----
ggplot(mpg, aes(hwy)) + geom_freqpoly()

## ----hist3, comment=NA, message=FALSE,out.width= "4in",out.height="2in",size='scriptsize'----
ggplot(mpg, aes(displ, colour = drv)) +
  geom_freqpoly(binwidth = 0.5)

## ----hist4, comment=NA, message=FALSE,out.width= "4in",out.height="2in",size='scriptsize'----
ggplot(mpg, aes(displ, fill = drv)) +
  geom_histogram(binwidth=0.5) +
  facet_wrap(~drv, ncol =1)

## ----scatter1, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
ggplot(faithful,aes(eruptions,waiting))+geom_point()

## ----scatter2, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
ggplot(mpg, aes(displ, cty, colour = class)) + geom_point()

## ----scatter3, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
ggplot(mpg, aes(drv, hwy)) + geom_jitter()

## ----faithfulmean, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
length(faithful$waiting)
mean(faithful$waiting)
median(faithful$waiting)
freq=tabulate(faithful$waiting)
max(freq)
which.max(freq)


## ----faithfulsd, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
n=length(faithful$eruptions)
sum((faithful$eruptions - mean(faithful$eruptions))^2)/(n-1) #표본분산
var(faithful$eruptions) #R에서 표본분산 명렁어 
sqrt(var(faithful$eruptions))
sd(faithful$eruptions) #R에서 표본표준편차 명령어 

## ----faithfulquant, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
pquant=quantile(faithful$eruptions,probs=c(0.25,0.5,0.75))
pquant[3]-pquant[1]  # IQR
IQR(faithful$eruptions) # IQR 명령어
max(faithful$eruptions)-min(faithful$eruptions) #표본의 범위
R=range(faithful$eruptions) # Range를 벡터로 구해주는 명령어
R[2]-R[1]

## ----faithfulsum, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
iqr.val=IQR(faithful$eruptions)
c(pquant[1]-1.5*iqr.val, pquant[3] +1.5*iqr.val)
faithful$eruptions[faithful$eruptions > pquant[3] +1.5*iqr.val]
faithful$eruptions[faithful$eruptions < pquant[3] -1.5*iqr.val]
summary(faithful$eruptions)

## ----boxplot1, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize',warning=FALSE----
library(ggpubr)
box1 <- ggplot(faithful, aes(1,eruptions)) + geom_boxplot()
box2 <- ggplot(faithful, aes(1,waiting)) + geom_boxplot()
ggarrange(box1,box2)

## ----boxplot2, comment=NA, echo=TRUE, out.width= "2.5in",size='scriptsize'----
ggplot(mpg, aes(drv, hwy)) + geom_boxplot()

