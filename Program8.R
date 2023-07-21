#8th program
# Assuming the data is loaded into a data frame named 'data'
data <- read.table("Table1.txt", header=FALSE)

# a. Change the names of the columns
colnames(data) <- c("N", "A", "H", "W", "G")
print(data)
# b. Change the row names to be the same as 'Name' and remove the 'Name' variable
rownames(data) <- data$N
data$N <- NULL
print(data)