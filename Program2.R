# Create the initial data frame
df1 <- data.frame(
  Name = c("Ram", "Alwin", "Billy", "Amera", "Olive", "Dora"),
  Age = c(30, 35, 22, 16, 42, 59),
  Height = c(177, 164, 155, 180, 124, 150),
  Weight = c(57, 48, 45, 60, 52, 55),
  Gender = c("M", "F", "M", "F", "F", "F"),
  stringsAsFactors = FALSE
)

print(df1)

# Invert the gender for all individuals
df1$Gender <- ifelse(df1$Gender == "M", "F", "M")

# Create the second data frame
df2 <- data.frame(
  Name = c("Ram", "Alwin", "Billy", "Amera", "Olive", "Dora"),
  Working = c("Y", "N", "Y", "N", "Y", "N"),
  stringsAsFactors = FALSE
)

print(df2)

# Combine the data frames column-wise
df_combined <- cbind(df1, df2)

print(df_combined)
