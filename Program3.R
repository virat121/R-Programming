#3rd program
#(a)
class(state.x77)
s77<-data.frame(state.x77)
class(s77)

#(b)
summary(s77)
nrow(s77[s77$Income<5000,])

#(c)
row.names(s77[which.max(s77$Income),])

#(d)
df <- data.frame(state.abb, state.area, state.division, state.region, row.names = state.name)
print(df)
colnames(df) <- substr(colnames(df), 7, 9)
new.df <- cbind(state.x77,df)
new.df

#(e)
new.df$div <- NULL
new.df <- subset(new.df[,-c(4, 6, 7, 9, 10)])
print(new.df)

#(f)
new.df$Illiteracy.Levels <- ifelse(new.df$Illiteracy >= 0 & new.df$Illiteracy < 1,"Low",ifelse(new.df$Illiteracy >= 1 & new.df$Illiteracy < 2, "Some","High"))
new.df$Illiteracy.Levels

# (g) Filter and find the state from the West with low illiteracy and the highest income
x <- subset(new.df, state.region == "W" & Illiteracy.Levels == "Low")
row.names(x[which.max(x$Income),])
