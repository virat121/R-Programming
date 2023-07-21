#7th program
data<-read.table("Table1.txt",header=FALSE)
print(data)
#finding the missing data
missingdata<-is.na(data)
print(missingdata)
#C
avgcol4<-mean(data$weight,is.na=TRUE)
data$weight[is.na(data$weight)]<-avgcol4
print(data)
