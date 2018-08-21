## ----setup, include=FALSE, cache=FALSE-----------------------------------
library(knitr)
## set global chunk options
opts_chunk$set(fig.path='figure/manual-', cache.path='cache/manual-', fig.align='center', fig.show='hold', par=TRUE)
## I use = but I can replace it with <-; set code/output width to be 68
options(formatR.arrow=TRUE, width=150, digits=4)
## tune details of base graphics (http://yihui.name/knitr/hooks)
#knit_hooks$set(par=function(before, options, envir){
#if (before && options$fig.show!='none') par(mar=c(4,4,.1,.1),cex.lab=.95,cex.axis=.9,mgp=c(2,.7,0),tcl=-.3)
#})

## ----package1, message=F, comment=NA,message=FALSE,warning=FALSE---------
library(modeest)

tinyData  <-  c(1,2,1,2,3,3,3,4,5,4,5)
mfv(tinyData)

multiData <- c(1,5,7,7,9,9,10)
mfv(multiData)



## ----comments1,comment=NA------------------------------------------------
## nothing happen

## ----arithmetics1,comment=NA---------------------------------------------
3+5  
3/5

## ----arithmetics2,comment=NA---------------------------------------------
x=5; y=6 
x+y
sin(x)+exp(y) 

## ----type_example1,comment=NA--------------------------------------------
is.numeric(10)
is.numeric('3')
is.numeric("3")

## ----type_example2,comment=NA--------------------------------------------
is.character(5)
is.character('5')
is.character("5")
is.infinite(-Inf)

## ----vector1,comment=NA--------------------------------------------------
x1 <-c(1,3,5,7,9)
x1

## ----vector2,comment=NA--------------------------------------------------
x2=seq(1,9,2)
x2
x3=rep(1,10)
x3
x4=1:10
x4

## ----vector3,comment=NA--------------------------------------------------
x5=c('1','2','3')
x5
x6=c('A','B','C')
x6

## ----vector4,comment=NA--------------------------------------------------
x1^2+2*x2^2

## ----vector5,comment=NA--------------------------------------------------
x1+x3

## ----list1,comment=NA, size='small'--------------------------------------
myvector <- c(8, 6, 9, 10, 5)
mylist <- list(name="Fred", wife="Mary", myvector)
mylist


## ----list2,comment=NA----------------------------------------------------
mylist[[2]]
mylist$wife
mylist[[3]]

## ----table1,comment=NA, size='small'-------------------------------------
mynames <- c("Mary", "John", "Ann", "Sinead", "Joe",
             "Mary", "Jim", "John", "Simon")
table(mynames)

## ----table2,comment=NA---------------------------------------------------
mytable <- table(mynames)
mytable[[4]]
mytable[["John"]]

## ----rc33, comment=NA, size='footnotesize', out.width= "2.1in"-----------
e=rnorm(100)
n=length(e)
s=rep(0,n)
for  (i  in  (1:n)){
  s[i]=sum(e[1:i])
}
t=1:n 
plot(t,s)

## ----whileloop,comment=NA, size='small'----------------------------------
b=122%%2
quot=122 %/% 2
while(quot >0){
  b=c(quot%%2, b)
  quot=quot%/%2
}
b

## ----break, comment=NA---------------------------------------------------
x <- 1:5
for (val in x) {
    if (val == 3){
        break
    }
    print(val)
}

## ----next, comment=NA----------------------------------------------------
x <- 1:5

for (val in x) {
    if (val == 3){
        next
    }
    print(val)
}

## ----rc34, comment=NA, out.width= "2.1in"--------------------------------
x=3
if(x>1){
  y=1 
}else{
  y=-1
}
y
y=ifelse(x>1,1,-1)
y

## ----rc35, comment=NA, size='footnotesize', out.width= "2.1in"-----------
x=runif(100); n=length(x); argm=1; m=x[1]
for  (i in (2:n)){
  if(m<x[i]){
    m=x[i]
    argm=i
    }
}
c(argm,m)

## ----function1,comment=NA, size='small'----------------------------------
myvector=c(1,1,1,2,2,2,2)
mean(myvector) # 내장함수
myfunction <- function(x) { return(20 + (x*x)) } 
# 사용자 정의 함수
myfunction(10)
myfunction(25)

## ----function2,comment=NA------------------------------------------------
fish(myvector) # 미정의 함수

## ----ft1,comment=NA,eval=FALSE-------------------------------------------
ftnname <- function(arg_1, arg_2, ... ){
  expression1
  expression2
  
}

ftnname(x, y)

## ----ft2,comment=NA,size='scriptsize'------------------------------------
oddcount = function(x) {
   count = 0
   for (i in x) {
     if (i %% 2 == 1) count = count+1
   }
   count
}
x = 1:10; oddcount(x)

## ----ft3,comment=NA,size='scriptsize'------------------------------------
msd = function(x)
{
  res = numeric(2)
  names(res) = c("mean", "sd")
  res[1] = mean(x)
  res[2] = sd(x)
  res
}

x = rnorm(100)
msd(x)

## ----ft4,comment=NA,size='scriptsize'------------------------------------
msdq = function(x)
{
  res = list(mean=mean(x), sd=sd(x), 
             quantiles=quantile(x, c(0.05, 0.5, 0.95)))
  res
}

x = rnorm(100)
msdq(x)

## ----ft5,comment=NA,size='scriptsize'------------------------------------
g = function(order = 2) {
  t <- function(x) return(x^order)
  return(t) 
}
g(3)
g(3)(2)

## ----ft6,comment=NA,size='scriptsize',eval=FALSE-------------------------
fun1 <- function(data, data.frame, graph, limit) {
....
}
ans <- fun1(d, df, TRUE, 20)
fun1(d, df, graph=TRUE, limit=20)
fun1(data=d, limit=20, graph=TRUE,  data.frame=df)

## ----ft7,comment=NA,size='scriptsize',eval=FALSE-------------------------
fun1 <- function(data, data.frame,
graph=TRUE, limit=20 ) {
....
}
fun1(d, df)
fun1(d, df,limit=10)

## ----ft8,comment=NA,size='scriptsize',fig.show=TRUE, out.height='2in'----
fun <- function(x,y,col="red") {
     plot(x,y,col=col)
}
x = 1:10
y = x + rnorm(10)

par(mfrow=c(1,2),oma=c(1,1,1,1),mar=c(1,1,1,1))
fun(x,y)
fun(x,y, col="blue")

## ----scan1, comment=NA,size='scriptsize'---------------------------------
scan("z1.txt")
scan("z2.txt")
scan("z3.txt")
scan("z3.txt",what="")
scan("z4.txt", what="")

## ----scan2, comment=NA,size='small'--------------------------------------
scan("z3.txt",what="")
scan("z3.txt",what="",sep="\n")

## ----scan3, comment=NA,eval=FALSE,size='small'---------------------------
w <- readline()
w

inits <- readline("type your initials: ")
inits

## ----scan4, comment=NA,size='scriptsize'---------------------------------
x <- 1:3
print(x^2)
print("abc")
cat("abc\n")
cat(x, "abc", "de\n")
cat(x, "abc", "de\n",sep="")

## ----save1, comment=NA,size='small'--------------------------------------
id=c(1,2,3)
name=c('Mr.Foo', 'Ms.Bar','Mr. Baz')
score=c(95,97,92)
a=data.frame(id,name,score)
write.csv(a, file='a.csv')
write.csv(a, file='a2.csv',row.names=FALSE)
write.table(a, quote=FALSE, sep=',',file='a3.csv', 
            row.names=FALSE)
write.table(a, quote=FALSE, file='a4.txt',
            row.names=FALSE, sep='\t')

## ----save2, comment=NA, size='footnotesize'------------------------------
x <- read.csv("a2.csv")
x
str(x)

## ----save3, comment=NA, echo=-1, size='footnotesize'---------------------
write.table(a, quote=FALSE, sep=',',file='b.csv', 
            row.names=FALSE,col.names=FALSE)

y <- read.csv("b.csv", header=FALSE)
y

## ----save4, comment=NA, size='footnotesize'------------------------------
colnames(y)
colnames(y) <- c('id','name','score')
y

## ----save5, comment=NA, size='footnotesize'------------------------------
z <- read.csv("a2.csv", stringsAsFactors=FALSE)
str(z)

## ----save6, comment=NA,size='small'--------------------------------------
#여러개의 R 오브젝트를 하나의 파일로 저장해보자
b=list(a=1,b=TRUE, c='oops')
save(a, b, file='xy.RData')
#load('xy.RData')

## ----rc32, comment=NA, size='scriptsize', echo=-1------------------------
options(width=65)
w = read.csv(
"http://www.mathstat.strath.ac.uk/outreach/nessie/datasets/whiskies.txt",
row.names = 1,  stringsAsFactors = FALSE)
head(w)

