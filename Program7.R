# Create a sample data frame
data3 <- data.frame(
  Name = c("Ram", "Alwin", "Billy", "Amera", "Olive", "Dora"),
  Age = c(30, 35, '--', 16, 42, 59),
  Height = c(177, 164, 155, '*', 124, 150),
  Weight = c(57, 48, 45, 60, '**', 55),
  Gender = c("M", "F", "M", "F", "F", "F")
)

# Save the data frame as "table05.txt" with tab-delimiter
write.table(data3, file = "table05.txt", sep = "\t", na = "", row.names = FALSE, quote = FALSE)

# Verify that the file has been created
if (file.exists("table05.txt")) {
  cat("File 'table05.txt' has been created.\n")
} else {
  cat("Error creating the file.\n")
}

#a
data7 <- read.table("table05.txt", header = TRUE, sep = "\t", fill = TRUE)

print(data7)

#b
#finding the missing data
missing_data<-subset(data7,Age=='--' | Weight=='--' | Height=='--' | Age=='*' | Height=='*' | Weight=='**')
print(missing_data)

#c
numeric_values <- as.numeric(as.character(data7$Weight))
avg_weight <- mean(numeric_values, na.rm = TRUE)
print(avg_weight)
data7$Weight[data7$Weight == '--' | data7$Weight == '**'] <- avg_weight
#data7$Weight[is.na(data7$Weight)] <- avg_weight

print(data7)
