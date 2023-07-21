#6th program
replace<-function(dataframe,value){
  dataframe[dataframe==value]<-NA
  return(dataframe)
}
#creating dataframe
df<-data.frame(A=c(1,2,3,4,5),B=c("a","b","c","d","e"))
print(df)

#calling the function
newdf<-replace(df,"a")
print(newdf)