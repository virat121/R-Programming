calculate_divisors <- function(n){
  divisors  <- c()
  for(i in 2:(n-1)){
    if(n%%i==0){
      divisors <- c(divisors,i);
    }
  }
  divisors_count <- length(divisors)
  cat("Divisors: ",divisors,"\n")
  cat("Count: ",divisors_count);
}

number <- 20
calculate_divisors(number)