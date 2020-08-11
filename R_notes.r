R: 

1. data type
numberic, integer, complex, logical, character

functions:
class(x)
is.integer(x), as.integer
sqrt(-1+0i), sqrt(as.complex(-1))
x & y, x | y, !x
as.character(numb), paste(a,b), sprintf("%s=%d", "pie", 3.14),
substr(str,start=3, stop=6)
sub(old,new,str)
help("sub")

2. vector
c(a,b,c), length(c(a,b,c))
c(va,vb), 5*va, va+vb #recycling rule
s=c(va,vb) -> s[3], s[-3] #remove member
s=c(1,2,3,4,5,6,7)
s[c(2,3)], s[c(2,3,3)],s[c(2,1,3)],s[2:4]
help(":")

#define logic index - TRUE to include, FALSE to exclude
L=c(F,T,F,T,F,F,F)
s[L]=2 4
#define named vecor - is useful to assign names to the columns and retrieve


3. maxtrix
M=maxtrix(c(2,4,3,1,5,7), nrow=2, ncol=3,byrow=TRUE)
M[2,3]=7, M[2,]=1 5 7
M[,3]=3 7
M[,c(1,3)]=
2 3
1 7
#assign names to the row and column
dimnames(M)=list(c("R1","R2"), c("C1","C2,"C3))

t(M) #transpose
cbind(M1,M2) #having the equal number of rows
rbind(M1,M2) #having the equal number of columns
c(M) #deconstruct matrix to vector


4. list (hybrid vector)
each member in the list can be a vector
slicing - double square bracket
LT[[2]], LT[[2]][1]


named list
LT=list(Name1=c(1,2,3), Name2=c(4,5,6))
#done to vector member
LT["Name1"], 
LT[c("Name2","Name1")] #reverse
#done to element - double sqare backet
LT[["Name1"]]=LT&Name1=1 2 3
#search path attachment
attach(LT)
#cleanup
detach(LT)

5. data frame
df[1,2] #get the cell(1,2)
df[1,"column2"]
nrow(df),ncol(df) #number of row and column
head(df) #preview
df[[1]]=df[["column1"]]=df$column1=df[,"column1"] #return the first column

#column slicing
df[1]
df[c("column1","column2")]=df[c(1,2)]??  #return the two columns
#row sicing
df[1,]
df[c(1,2),]
df[c("row1","row2"),] #if rows have names

#assign logical indexing to filter the dataframe
L=df$bool_value_column==0
df[L,]$othercolumn

#excel
library(gdata)
help(read.xls)
df=read.xls("mydata.xls") 
#OR
libary(XLConnect)
wk=loadWorkbook("mydata.xls"
df=readWorksheet(wk,sheet="Sheet1")

#spss
df=read.spss("mydata"",to.data.frame=TRUE)

#text table
df=read.table("mydata.txt")

#csv
getwd()
setwd("<path>")
df=read.csv("mydata.csv")


help(barplot)
count <- table(Gender)
percent= count/total_number #%
barplot(count)
barplot(percent,main="TITLE",xlab="Gender", y="%", las=1, names.org=c("A","B") )
barplot(percent,main="TITLE",xlab="Gender", y="%", las=1, names.org=c("A","B") , horiz=TRUE)

pie(count, main="title")
box
?boxplot
quantile(df, probs=c(0,0,25,0.5,0.75,1))
boxplot(df~Gender, main="title") #==boxplot(df[Gender=="female"],df[Gender=="male"])

hist(dfvar, freq=F, prob=T, ylim=c(0,0.2), breaks=7) # 8 bins
breaks=seq(from=0, to=16, by=2)

lines(density(dfvar), col=2, lwd=3) #add density curve with a thinker red line

stem(dfvar, scale=2)
#exam two or more categorial var
tb <- table(smoke, gender)
barplot(tb, beside=T, legend.txt=("Non-smoke","smoke"), main="title", xlab="Gender", las=1, col=c(2,4))

mosaicplot(tb)
#exam two or more numeric var

#Pearson's correlation
cor(age, height)
plot(age, height, main="title", xlab="age", ylab="hight", las=1, 
xlim=c(0,25), cex=0.5)
plot(age, height, main="title", xlab="age", ylab="hight", las=1, 
xlim=c(0,25), pch=8, col=2)
abline(lm(height~age), col=4)
lines(smooth.spline(age, height), lty=2, lwd=5)


#summary stats
summary(df)
mean(df$var)
mean(df$var,trim=0.10)
median, var #sd(df$var)^2, sd #sqrt(var(df$var))
min, max, range, quantile(df$var, probs=0.90)
sum(df$var)
sum(df$var)/sumb
cor(v2, v1, method="spearman") #default is pearson
cov(v1, v2)
var(v1, v2)
summary(v1) #used for both categorical and numeric
summary(df)



table(df$var)/length(df$var)
table(df$v1, df$v2) #contigency

plot()
cex, font col
main, lab, axis
#cex.lab
pch=2, pch="w"

abline(lm(height~age), col=4, lty=2, lwd=6)

point() #add another plot upon the current
part(mfrow=c(1,2))

axes=FALSE
axis(side=1, at=(7, 12.3, 15), lables=("sev","mean","15"))  #change x axis
box()

help(par)
text(label="", adj=1, size=2, x=, y=, cex=, col=)
legend(x=, y=, legend=, fill=c(2,4))





































