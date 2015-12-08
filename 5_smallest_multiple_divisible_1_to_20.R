# Problem 5
# Smallest multiple
library(numbers)
x = 1:20
mLCM(x)

# by hand
gcd = function(a, b) {
  if (b == 0) {
    return(a)
  } else {
    return(gcd(b, a %% b))
  }
}

myLCM = function(a,b) {
  # returns LCM
  lcm = (a*b)/(gcd(a,b))
  return(lcm)
}

myLCM(10,4)

manyLCM = function(vector) {
  lcm = Reduce(myLCM, vector)
  return(lcm)
}
manyLCM(1:20)