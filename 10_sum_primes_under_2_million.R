# Problem 10
# Sum primes below 2 million

# Function to check if a number is prime
# This algorithm is inefficient doesn't scale well
prime_test <- function(number) {
  if (number == 2) {
    return(TRUE)
  }
  else if (any(number %% 2:(number-1) == 0)) {
    return(FALSE)
  }
  else {
    return(TRUE)
  }
}

prime_test(131)


# Implementing a better primality test
prime_test = function(number) {
  if(number <= 1) {
    return(FALSE)
  }
  else if(number <= 3) {
    return(TRUE)
  }
  else if(number %% 2 == 0 | number %% 3 == 0) {
    return(FALSE)
  }
  x = 5
  while(x^2 <= number) {
    if(number %% x == 0 | number %% (x + 2) == 0) {
      return(FALSE)
    }
    x = x + 6
  }
  return(TRUE)
}

prime_test(14)
prime_test(131)

nums = seq(1:100000)
primes = numeric(100000)
for(i in seq_along(nums)) {
  if(prime_test(nums[i]) == TRUE) {
    primes[i] <- nums[i]
  }
}
sum(primes) # significant speed improvement

# Sum the primes under 2 million
nums = seq(1:2000000)
primes = numeric(2000000)
for(i in seq_along(nums)) {
  if(prime_test(nums[i]) == TRUE) {
    primes[i] <- nums[i]
  }
}
sum(as.numeric(primes))



