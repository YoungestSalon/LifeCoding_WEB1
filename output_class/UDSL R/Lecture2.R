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

## ----tidyverse1, size='footnotesize',warning=FALSE-----------------------
library(tidyverse)

## ----readr1, size='footnotesize'-----------------------------------------
library(readr)

## ----readr2, comment=NA, size='footnotesize'-----------------------------
read_csv("a1.csv")

## ----readr3, comment=NA, size='footnotesize'-----------------------------
read_csv("id,name,score
1,Mr.Foo,95
2,Ms.Bar,97
3,Mr. Baz,92")

## ----readr4, comment=NA, size='footnotesize'-----------------------------
read_csv("1,2,3\n4,5,6", col_names = FALSE)
read_csv("1,2,3\n4,5,6", col_names = c("x", "y", "z"))

## ----readr5, comment=NA, size='footnotesize'-----------------------------
ex <- read_csv("1,2,3\n4,5,6", col_names = c("x", "y", "z"))
write_csv(ex,"a2.csv")
read_csv("a2.csv")

## ----readr6, comment=NA, size='footnotesize'-----------------------------
parse_integer(c("12","23","34"))
parse_double(c("1.23","2.34","3.45"))
parse_number(c("$1.357.9","$123.5"))
parse_number("It cost $123.45")
parse_number("123.456.789",
             locale = locale(grouping_mark = "."))

## ----readr7, comment=NA, size='footnotesize'-----------------------------
parse_logical(c("true","false"))

## ----readr8, comment=NA, size='footnotesize'-----------------------------
parse_time("2:11pm")
parse_date("2017-09-09")
parse_datetime("2017-11-26 16:11")
parse_datetime("26 November, 2017","%d %B, %Y")

## ----readr9, comment=NA, size='footnotesize'-----------------------------
guess_parser(c("12,352,561", "1", "33"))
guess_parser(c("TRUE", "FALSE","F","T"))
guess_parser("15:01")
guess_parser("2010-10-01")

## ----tibble1, comment=NA, size='footnotesize'----------------------------
library(tibble)

## ----tibble2, comment=NA, size='footnotesize'----------------------------
tibble(x=c('a','b','c'), 1:3)

## ----tibble3, comment=NA, size='footnotesize'----------------------------
as.tibble(iris)

## ----tibble4, comment=NA, size='footnotesize'----------------------------
df <- tibble(x=1:3, y=c("Apple","Banana","Banana"))
df
add_column(df, z=c(1,0,-1), .before='y')

## ----tibble5, comment=NA, size='footnotesize'----------------------------
df <- tibble(x=1:3, y=c("Apple","Banana","Banana"))
df
add_row(df, x=4, y="Pineapple", .before=2)

## ----tibble6, comment=NA, size='footnotesize'----------------------------
enframe(c(a=5,b=8,c=4), name="alpha", value="number")

## ----tibble7, comment=NA, size='footnotesize'----------------------------
df <- enframe(c(a=5,b=8,c=4), name="alpha", value="number")
df
deframe(df)

## ----tibble8, comment=NA, size='footnotesize'----------------------------
frame_matrix(
  ~col1,~col2,
  1,2,
  3,4
)

## ----tidyr1, size='footnotesize'-----------------------------------------
library(tidyr)

## ----tidyr2, size='footnotesize',comment=NA------------------------------
pres <- tribble(
  ~name,~drug1,~drug2,~drug3,~drug4,
  "A",120,118,116,109,
  "B",110,115,110,113,
  "C",130,110,117,105
)
pres

## ----tidyr3, size='footnotesize',comment=NA------------------------------
pres1 <- gather(pres, drug_type, bp, -name)
pres1

## ----tidyr4, size='footnotesize',comment=NA------------------------------
spread(pres1, drug_type, bp)

## ----tidyr5, size='footnotesize',comment=NA------------------------------
rate <- tribble(
  ~name,~key,~heart_rate,
  "A","drug.drink",70,
  "B","drug.drink",65,
  "C","drug.drink",72,
  "A","Xdrug.drink",80,
  "B","Xdrug.drink",82,
  "C","Xdrug.drink",78,
  "A","drug.Xdrink",62,
  "B","drug.Xdrink",59,
  "C","drug.Xdrink",64,
  "A","Xdurg.Xdrink",75,
  "B","Xdurg.Xdrink",67,
  "C","Xdurg.Xdrink",70)

## ----tidyr6, size='footnotesize',comment=NA------------------------------
rate

## ----tidyr7, size='footnotesize',comment=NA------------------------------
rate1 <- separate(rate,key, into=c("drug_or_not",
                  "drink_or_not"),sep="\\.")
rate1

## ----tidyr8, size='footnotesize',comment=NA------------------------------
unite(rate1, drug_and_drink, c("drug_or_not",
      "drink_or_not"), sep=",")

## ----dplyr1, size='footnotesize'-----------------------------------------
library(dplyr)

## ----dplyr2, size='footnotesize',warning=FALSE,comment=NA----------------
filter(mtcars[1:10,], gear == 4)

## ----dplyr3, size='footnotesize',comment=NA------------------------------
arrange(mtcars[1:5,],desc(mpg))

## ----dplyr4, size='footnotesize',comment=NA------------------------------
select(mtcars[1:5,],mpg:hp)

## ----dplyr5, size='footnotesize',comment=NA------------------------------
select(iris[1:5,],matches(".t"))

## ----dplyr6, size='footnotesize',comment=NA------------------------------
mutate(iris[1:3,], add_LS_LP=Sepal.Length+Petal.Width)

## ----dplyr7, size='footnotesize',comment=NA------------------------------
transmute(iris[1:3,], add_LS_LP=Sepal.Length+Petal.Width)

## ----dplyr8, size='footnotesize',comment=NA------------------------------
dfa <- tibble(x1=c(1,2,3), y1=c('a','b','c'))
dfb <- tibble(x1=c(1,2,5), y2=c(T,F,T))
dfa
dfb

## ----dplyr9, size='footnotesize',comment=NA------------------------------
left_join(dfa,dfb)

## ----dplyr10, size='footnotesize',comment=NA-----------------------------
right_join(dfa,dfb)

## ----dplyr11, size='footnotesize',comment=NA-----------------------------
inner_join(dfa,dfb)

## ----dplyr12, size='footnotesize',comment=NA-----------------------------
full_join(dfa,dfb)

## ----dplyr13, size='footnotesize',comment=NA-----------------------------
semi_join(dfa,dfb)

## ----dplyr14, size='footnotesize',comment=NA-----------------------------
anti_join(dfa,dfb)

## ----dplyr15, size='footnotesize',comment=NA-----------------------------
dfc <- tibble(x1=c(1,2,3), y1=c(T,F,T))
dfd <- tibble(x1=c(5,1,2), y1=c(F,T,F))
dfc
dfd

## ----dplyr16, size='footnotesize',comment=NA-----------------------------
intersect(dfc,dfd)

## ----dplyr17, size='footnotesize',comment=NA-----------------------------
union(dfc,dfd)

## ----dplyr18, size='footnotesize',comment=NA-----------------------------
setdiff(dfc,dfd)

## ----stringr1, size='footnotesize',comment=NA----------------------------
library(stringr)

## ----stringr2, size='footnotesize',comment=NA----------------------------
x <- c("apple","banana","pineapple","strawberry","mango")
str_length(x)

## ----stringr3, size='footnotesize',comment=NA----------------------------
str_c(x, collapse=",")

## ----stringr4, size='footnotesize',comment=NA----------------------------
str_sub(x, 2, 4)

## ----stringr5, size='footnotesize',comment=NA----------------------------
str_subset(x, "[be]")
str_which(x, "[be]")

## ----stringr6, size='footnotesize',comment=NA----------------------------
str_count(x, "[be]")

## ----stringr7, size='footnotesize',comment=NA----------------------------
str_detect(x, "[be]")

## ----stringr8, size='footnotesize',comment=NA----------------------------
str_locate(x, "ba")

## ----stringr9, size='footnotesize',comment=NA----------------------------
str_extract(x, "[ba]")

## ----stringr10, size='footnotesize',comment=NA---------------------------
str_split(str_c(x[1:2],","),",")

## ----forcats1, size='footnotesize',comment=NA----------------------------
library(forcats)

## ----forcats2, size='footnotesize',comment=NA----------------------------
head(gss_cat)

## ----forcats3, size='footnotesize',comment=NA----------------------------
fct_count(gss_cat$race)

## ----forcats4, size='footnotesize',comment=NA----------------------------
cat1 <- fct_recode(gss_cat$race, B="Black",W="White",O="Other")
fct_count(cat1)

## ----forcats5, size='footnotesize',comment=NA----------------------------
cat2 <- fct_collapse(gss_cat$race, BW=c("Black","White"))
fct_count(cat2)

## ----forcats6, size='footnotesize',comment=NA----------------------------
cat3 <- fct_lump(gss_cat$race, n=1)
fct_count(cat3)

## ----lubridate1, size='footnotesize',comment=NA,warning=FALSE------------
library(lubridate)

## ----lubridate2, size='footnotesize',comment=NA--------------------------
ymd("20171127")
mdy("11-27-2017")
ymd_hms("2017-11-26 08:24:31")

## ----lubridate3, size='footnotesize',comment=NA--------------------------
a <- ymd_hms("2017-11-26 08:24:31")
second(a)
second(a) <- 17
a

## ----lubridate4, size='footnotesize',comment=NA--------------------------
wday(a, label=TRUE)

## ----lubridate5, size='footnotesize',comment=NA--------------------------
b <- ymd_hms("2017-11-27 08:45:17", tz="Pacific/Auckland")
with_tz(b, "America/Chicago")

## ----lubridate6, size='footnotesize',comment=NA--------------------------
force_tz(b, "America/Chicago")

## ----lubridate7, size='footnotesize',comment=NA--------------------------
start1 <- ymd_hms("2017-11-24 17:21:00", tz="Pacific/Auckland")
end1 <- ymd_hms("2017-11-27 17:00:00", tz="Pacific/Auckland")
work1 <- interval(start1, end1)
int_start(work1)
int_end(work1)

## ----lubridate8, size='footnotesize',comment=NA--------------------------
start2 <- ymd_hms("2017-11-26 07:21:00", tz="Pacific/Auckland")
end2 <- ymd_hms("2017-11-30 19:00:00", tz="Pacific/Auckland")
work2 <- interval(start2, end2)
int_overlaps(work1, work2)

## ----lubridate9, size='footnotesize',comment=NA--------------------------
ymd(20151127)+days(1)
ymd(20151127)+months(1)

## ----lubridate10, size='footnotesize',comment=NA-------------------------
leap_year(2016)
ymd(20151127)+dyears(1)
ymd(20151127)+years(1)

## ----lubridate11, size='footnotesize',comment=NA-------------------------
start1
starts <- start1 + days(0:5)*2
starts

## ----lubridate12, size='footnotesize',comment=NA-------------------------
as.period(work1)

