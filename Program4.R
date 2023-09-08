
for (a in 1:3) {
  for (b in 1:3) {
    cat("a:", a, "b:", b, "\n")
    if (b == 2) {
      break
    }
  }
}

i <- 2

while (i <= 5) {
  if (i == 3) {
    i<-i+1
    next
  }
  cat("i:", i, "\n")
  i <- i + 1
}
