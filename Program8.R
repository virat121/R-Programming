#8th program

# Create a data frame with the modified data
modified_data <- data.frame(
  Name = c("Virat", "Alwin", "Billy", "Amera", "Olive", "Dora"),
  Age = c(30, 35, 28, 16, 42, 59),
  Height = c(177, 164, 155, 168, 124, 150),
  Weight = c(57, 48, 45, 60, 70, 55),
  Gender = c("M", "F", "M", "F", "F", "F")
)

write.table(modified_data, file = "table8.txt", sep = "\t", na = "", row.names = FALSE, quote = FALSE)

# Verify that the file has been created
if (file.exists("table8.txt")) {
  cat("File 'table8.txt' has been created.\n")
} else {
  cat("Error creating the file.\n")
}

data1 <- read.table("table8.txt", header = TRUE, sep = "\t", fill = TRUE)

print(data1)

# a. Change the names of the columns
colnames(data1) <- c("N", "A", "H", "W", "G")
print(data1)


#b.
# Change the row names to match the "Name" column and remove the "Name" column
rownames(modified_data) <- modified_data$Name
modified_data$Name <- NULL

# Verify the new data frame
print(modified_data)
