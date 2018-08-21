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
library(tidyverse)

## ----corr, comment=NA, size='scriptsize'---------------------------------
kor <- c(42,38,51,53,40,37,41,29,52,39,45,34,47,35,44,48,47,30,29,34)
eng <- c(30,25,34,35,31,29,33,23,36,30,32,29,34,30,28,29,33,24,30,30) 


cor(kor,eng) # 표본상관계수
cor.test(kor,eng) # 상관분석

## ----corr2, comment=NA, size='scriptsize',out.width= "2in"---------------
par(cex.lab=2,cex.axis=2)
plot(kor,eng)

## ----car1, comment=NA, size='scriptsize',out.width= "2in"----------------
data(cars)
plot(cars)

## ----car12, comment=NA, size='scriptsize',out.width= "2in"---------------
cor(cars$dist,cars$speed)
cor.test(cars$dist,cars$speed)


## ----reg0, comment=NA, size='scriptsize'---------------------------------
lm(eng~kor)

## ----reg1, comment=NA, size='scriptsize',out.width= "2.5in"--------------
fit1=lm(eng~kor)
plot(kor,eng)
abline(fit1, col="blue")

## ----reg2, comment=NA, size='tiny'---------------------------------------
coef(fit1)     # 회귀 계수
fitted(fit1)[1:6]   # fitted values
round(residuals(fit1)[1:6],2)    # 잔차
fitted(fit1)[1:6] + residuals(fit1)[1:6]  # eng와 같아야 함
eng[1:6]

## ----reg3, comment=NA, size='scriptsize',out.width= "2.5in"--------------
plot(kor,eng)
abline(fit1, col="blue")
points(kor,fitted(fit1), col='red', pch=20)

## ----reg4, comment=NA, size='scriptsize',out.width= "2.5in"--------------
confint(fit1)      # 계수의 신뢰구간
deviance(fit1)     # 잔차제곱합
sum((eng - fitted(fit1))^2)  # 잔차제곱합


## ----reg5, comment=NA, size='scriptsize',out.width= "2.5in"--------------
predict(fit1, newdata=data.frame(kor=37))
coef(fit1)[1] + coef(fit1)[2]*37
predict(fit1, newdata=data.frame(kor=37), interval="confidence")  
# 신뢰구간
predict(fit1, newdata=data.frame(kor=37), interval="prediction")  
# 예측구간

## ----reg6, comment=NA, size='scriptsize',out.width= "2.5in"--------------
summary(fit1)

## ----reg7, comment=NA, eval=FALSE, size='scriptsize',out.width= "2.5in"----
Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) 15.98985    2.95048   5.419 3.78e-05 ***
kor          0.34994    0.07125   4.911 0.000113 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

## ----reg8, comment=NA, eval=FALSE, size='scriptsize',out.width= "2.5in"----
Multiple R-squared:  0.5727,	Adjusted R-squared:  0.5489 
F-statistic: 24.12 on 1 and 18 DF,  p-value: 0.0001125

## ----reg9, comment=NA, size='scriptsize',out.width= "2.5in"--------------
anova(fit1)

## ----reg10, comment=NA, size='scriptsize',out.width= "2.5in"-------------
fit1
fit0 <- lm(eng~1)
fit0

## ----reg11, comment=NA, size='scriptsize',out.width= "2.5in"-------------
anova(fit0,fit1)

## ----reg12, comment=NA, size='scriptsize',out.width= "2.5in",out.height="2in"----

plot(kor,eng)
sorted.kor=sort(kor,index.return=TRUE)
s.kor=sorted.kor$x
s.eng=eng[sorted.kor$ix]
p <- predict(fit1, interval = "confidence")
s.p <- p[sorted.kor$ix,]
abline(fit1, col = "blue")
x <- c(s.kor, tail(s.kor, 1), rev(s.kor), s.kor[1])
y <- c(s.p[, "lwr"], tail(s.p[, "upr"], 1), rev(s.p[, "upr"]), s.p[,"lwr"][1])
polygon(x, y, col = rgb(0, 1, 0, 0.25))

## ----reg13, comment=NA, size='scriptsize',out.width= "2.5in",out.height="2in"----
library(ggplot2)
q <- ggplot(data.frame(kor,eng),aes(kor,eng))
q+geom_point()+stat_smooth(method="lm")

## ----reg14, comment=NA, size='scriptsize',out.width= "2.5in",out.height="2in"----
par(mfrow=c(2,2))
plot(fit1)

## ----regcor, comment=NA, size='scriptsize',out.width= "2.5in",out.height="2in"----
coef(fit1)[2]
cor(eng,kor)*sd(eng)/sd(kor)

cor(eng,kor)^2
summary(fit1)$r.squared



## ----car2, comment=NA, size='scriptsize',out.width= "2.5in",out.height="2in"----
m <-lm(dist~speed, data=cars )
summary(m)

## ----car3, comment=NA, size='scriptsize',out.width= "2.5in",out.height="2in"----
coef(m)
fitted(m)[1:6]
residuals(m)[1:6]
fitted(m)[1:6]+residuals(m)[1:6]
cars$dist[1:6]

## ----car4, comment=NA, size='scriptsize',out.width= "2.5in",out.height="2in"----
plot(cars)
abline(m,col='blue')
points(cars$speed,fitted(m),col='red',pch=20)

## ----car5, comment=NA, size='scriptsize',out.width= "2.5in",out.height="2in"----
confint(m)
deviance(m)

## ----car6, comment=NA, size='scriptsize',out.width= "2.5in",out.height="2in"----
predict(m, newdata=data.frame(speed=3))
coef(m)[1]+coef(m)[2]*3
predict(m,newdata=data.frame(speed=3),interval='confidence')
predict(m,newdata=data.frame(speed=3),interval='prediction')


## ----car7, comment=NA, size='scriptsize',out.width= "2.5in",out.height="2in"----
anova(m)

## ----car8, comment=NA, size='scriptsize',out.width= "2.5in",out.height="2in"----
m0 <- lm(dist~1, data=cars)
anova(m0,m)

## ----car9, comment=NA, size='scriptsize',out.width= "2.5in",out.height="2in"----
p <- predict(m, interval = "confidence")
plot(cars)
 abline(m, col = "blue")
 x <- c(cars$speed, tail(cars$speed, 1), rev(cars$speed), cars$speed[1])
 y <- c(p[, "lwr"], tail(p[, "upr"], 1), rev(p[, "upr"]), p[,
     "lwr"][1])
 polygon(x, y, col = rgb(0, 1, 0, 0.25))


## ----car10, comment=NA, size='scriptsize',out.width= "2.5in",out.height="2in"----
q <- ggplot(cars, aes(speed, dist))
q+geom_point()+ stat_smooth(method='lm')


## ----car11, comment=NA, size='scriptsize',out.width= "2.5in",out.height="2in"----
par(mfrow=c(2,2))
plot(m)

## ----iriscat1, comment=NA, size='tiny'-----------------------------------
 iris_lm1 <- lm(Sepal.Width~ Species, data=iris) 
 summary(iris_lm1)

## ----logi1, comment=NA, size='scriptsize',warning=FALSE------------------
iris1 <- filter(iris, Species == "setosa" | Species == "versicolor")
iris1$Species <- factor(iris1$Species)
str(iris1)

## ----logi2, comment=NA, out.width= "2.5in", size='scriptsize'------------
ggplot(iris1, aes(Sepal.Length, Species, colour = Species)) + 
  geom_point()

## ----logi3, comment=NA, size='tiny'--------------------------------------
levels(iris1$Species)
fit <- glm(Species ~ Sepal.Length , data=iris1, family=binomial)
fit

## ----logi4, comment=NA, size='tiny'--------------------------------------
exp(fit$coefficients[2])

## ----logi5, comment=NA, size='tiny'--------------------------------------
summary(fit)

## ----logi6, comment=NA, size='tiny'--------------------------------------
fit_value <- fitted(fit)
fit_value

## ----logi7, comment=NA, size='tiny'--------------------------------------
predict(fit, newdata = tibble(Sepal.Length=c(5,6,7)), type = 'response')

## ----logi8, size='tiny'--------------------------------------------------
cutoff <- 0.5 # 절단값 선택
fit_clasi <- rep(0,length(fit_value))
fit_clasi[(fit_value > cutoff)==FALSE] <- "setosa" # 절단값 이상일 경우 setosa로 분류
fit_clasi[(fit_value > cutoff)==TRUE] <- "versicolor" # 절단값 미만일 경우 versicolor로 분류
fit_clasi <- factor(fit_clasi)

iris1$Species == fit_clasi

