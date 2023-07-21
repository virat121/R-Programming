# Outer loop increments 'a' 3 times
for (a in 1:3) {
  # Inner loop increments 'b' 3 times
  for (b in 1:3) {
    # Print the values of 'a' and 'b'
    cat("a:", a, "b:", b, "\n")
    # Use break statement to exit the inner loop after 2 incrementations
    if (b == 2) {
      break
    }
  }
}
# Initialize 'i' with 2
i <- 2

# While loop that prints 'i' and uses 'next' statement to skip printing 3
while (i <= 5) {
  if (i == 3) {
    i<-i+1
    # Use 'next' statement to skip printing 3 and proceed to the next iteration
    next
  }
  # Print the value of 'i'
  cat("i:", i, "\n")
  # Increment 'i'
  i <- i + 1
}
