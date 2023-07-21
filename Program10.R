#10th program
data(mtcars)
var1<-mtcars$mpg
var2<-mtcars$qsec
var3<-mtcars$wt
var4<-mtcars$hp

plot(var1,type="o",col="blue",xlab="index",ylab="value")
lines(var2,type="o",col="red")
lines(var3,type="o",col="green")
lines(var4,type="o",col="purple")
points(var1,col="blue")
points(var2,col="red")
points(var3,col="green")
points(var4,col="purple")
legend("topright",legend=c("var1","var2","var3","var4"),col=c("blue","red","green","purple"),lty=1,pch=1)

#highlighting it with different color
data(mtcars)
highlight_var1<-mtcars$mpg
highlight_var2<-mtcars$qsec
highlight_var3<-mtcars$wt
highlight_var4<-mtcars$hp

plot(var1,type="o",col="blue",xlab="index",ylab="value")
lines(var2,type="o",col="red")
lines(var3,type="o",col="green")
lines(var4,type="o",col="purple")
points(var1,col="blue")
points(var2,col="red")
points(var3,col="green")
points(var4,col="purple")
lines(highlight_var1,type="o",col="orange")
points(highlight_var1,col="orange")
legend("topright",legend=c("var1","var2","var3","var4"),col=c("blue","red","green","purple"),lty=1,pch=1)




#alternate
if (!exists("mtcars")) {
  data(mtcars)
}
vars_to_plot <- c("mpg", "disp", "hp", "wt")
colors <- c("blue", "red", "green", "purple")  
par(mfrow = c(1, 1))
for (i in 1:length(vars_to_plot)) {
  plot(mtcars[, vars_to_plot[i]], type = "b", col = colors[i],
      xlab = "Index", ylab = vars_to_plot[i], 
      main = paste("Line plot of", vars_to_plot[i]))
}
highlight_colors <- c("orange", "cyan", "magenta", "limegreen")
for (i in 1:length(vars_to_plot)) {
  points(1, mtcars[1, vars_to_plot[i]], pch = 16, col = highlight_colors[i])
}
