data(mtcars)
plot(mtcars$mpg,mtcars$drat,xlab = "miles per gallon",ylab = "Rear axle ratio")
boxplot(mtcars$mpg, main = "Boxplot of Miles/(US) gallon (mpg)", ylab = "Miles/(US) gallon")

# # Create a histogram of the "mpg" variable
# hist(mtcars$mpg, main = "Histogram of Miles/(US) gallon (mpg)", xlab = "Miles/(US) gallon")



# # Create a barplot of car count by the number of gears
# barplot(table(mtcars$gear), main = "Barplot of Car Count by Number of Gears", xlab = "Number of Gears", ylab = "Count")

# hist(mtcars$mpg)
