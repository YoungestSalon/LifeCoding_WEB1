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

## ----confex, size='small'------------------------------------------------
n = 49; sigma=30 ; xbar = 157.02 ; alpha=0.05 ; d=5
qnorm(1-alpha/2) # Z_(0.025)
c.i <- c(xbar - qnorm(1-alpha/2)*sigma/sqrt(n), 
         xbar + qnorm(1-alpha/2)*sigma/sqrt(n))
c.i

## ----test1, comment=NA, size='scriptsize'--------------------------------
mu0=1200; sigma=100; n=25; alpha=0.05
xbar=1240; z=(xbar-mu0)/(sigma/sqrt(n))
z
z.alpha=qnorm(0.95)
z.alpha
pval=1-pnorm(z)
pval

## ----onet, comment=NA, size='scriptsize'---------------------------------
bulb <- c(2000, 1975, 1900, 2000, 1950, 1850, 1950, 2100, 1975)
mean(bulb)
sd(bulb)
qt(0.95,8) #기각역의 경계값

## ----onet2, comment=NA, size='scriptsize'--------------------------------
t.test(bulb, mu=1950, alternative="greater")

## ----compci, comment=NA, size='small'------------------------------------
A <- c(4.8,4.0,5.8,4.9,5.3,7.4)
B <- c(4.0,4.2,5.2,4.9,5.6,7.1)
t.test(A-B,mu=0)

## ----eqvarttest, comment=NA, size='scriptsize'---------------------------
x_1 <- c(19.54, 14.47, 16.00, 24.83, 26.39, 11.49)
x_2 <- c(15.95,25.89,20.53,15.52,14.18,16.00)
# Pooled standard deviation
sqrt(((6-1)*var(x_1)+(6-1)*var(x_2))/(6+6-2)) 
t.test(x_1,x_2,var.equal=TRUE,conf.level=0.95) # t-test procedure

## ----uneqvarttest, comment=NA, size='scriptsize'-------------------------
x_1 <- c(12.7,19.3,20.5,10.5,14.0,10.8,16.6,14.0,17.2)
x_2 <- c(18.2,32.9,10.0,14.3,16.2,27.6,15.7)
# t-test procedure
t.test(x_1,x_2,"less",var.equal=FALSE,conf.level=0.95) 

## ----aov1, comment=NA, size='tiny'---------------------------------------
A1 <- c(47,58,51,61,46); A2 <- c(51,62,31,46,49)
A3 <- c(50,38,47,27,23); A4 <- c(22,23,28,42,25)
A <- c(A1,A2,A3,A4)
group <- as.factor(rep(1:4,each=5))
fabric <- data.frame(A,group)
A_table <- cbind(A1,A2,A3,A4)
apply(A_table,2,mean) ; mean(A)
aov_fabric <- lm(A~group, data=fabric)
anova(aov_fabric)

## ----aov2, comment=NA, size='tiny'---------------------------------------
M1 <- c(2,3,4,5); M2 <- c(4,5,6,4,3); M3 <- c(6,5,7,4,6,8)
M <- c(M1,M2,M3)
group_M <- as.factor(rep(1:3,times=c(4,5,6)))
mean(M1); mean(M2); mean(M3); mean(M)
mechanism <- data.frame(M,group_M)
aov_mechanism <- lm(M~group_M, data=mechanism)
anova(aov_mechanism)


## ----cat01, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
freq<-c(42,18,8,1)
some<-c(18,29,10,2)
none<-c(2,5,13,6)
TVexcer<-cbind(freq,some,none)
row.names(TVexcer)<-c("0~1","1~3","3~6","6~")
TVexcer

## ----cat02, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
library(ggplot2)
barplot(TVexcer)
mosaicplot(TVexcer)

## ----cate03, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
row1<-c(20,28,23,14,12)
row2<-c(14,34,21,14,12)
row3<-c(4,12,10,20,53)
hom<-rbind(row1,row2,row3)
dimnames(hom)=list(
"Region"=c("Region1", "Region2", "Region3"),
"Frequency"=c("Everyday", "Once a week","Once a month",
"Seldom", "Never"))
hom

## ----cate04, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
result<-chisq.test(hom)
result

## ----cate05, comment=NA, echo=TRUE,out.width= "2in",size='scriptsize'----
result$observed

## ----cate06, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
result$expected

## ----cate07, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
row1<-c(6,27,19)
row2<-c(8,36,17)
row3<-c(21,45,33)
row4<-c(14,18,6)

ind<-rbind(row1,row2,row3,row4)
dimnames(ind)=
list("Car" = c("light car", "small car", "medium car", "large car"),
"Commute dist" = c("0 ~ 15", "15 ~ 30", "30 ~"))
ind

## ----cate08, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
result<-chisq.test(ind)
result

## ----cate09, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
result$observed

## ----cate10, comment=NA, echo=TRUE, out.width= "2in",size='scriptsize'----
result$expected

