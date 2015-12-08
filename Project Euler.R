##### Problem 1 #####
# sum of numbers divisible by 3 and 5 less than 1000
sumList = 0
for (i in 1:999) {
  if (i %% 3 == 0) {
    sumList = sumList + i
  } else if (i %% 5 == 0) {
    sumList = sumList + i
  } else
    next
}
sumList


##### Problem 2 #####
# sum of even valued fibonacci numbers under 4 million

length = 50
fibNums = integer(length)
fibNums[1] = 1
fibNums[2] = 2
for (i in 3:length) {
  fibNums[i] = fibNums[i-1] + fibNums[i-2]
}
fibNums
fibNums.low = fibNums[fibNums <= 4000000]
sum = 0
for (i in 1:length(fibNums.low)) {
  if (fibNums.low[i] %% 2 == 0) {
    sum = sum + fibNums.low[i]
  }
}
sum


##### Problem 3 #####
# largest prime factor
library(schoolmath)
prime.factor(13195)
max(prime.factor(600851475143))


##### Problem 4 #####
# Largest Palindrome Product
palindromes = integer()
for (i in 100:999) {
  for (j in 100:999) {
    if (length(strsplit((as.character(i*j)), split = "")[[1]]) == 6) {
      temp = strsplit((as.character(i*j)), split = "")[[1]]
      #for (index in 1:length(temp)/2) 
      index = 1
      if (temp[index] == temp[length(temp)] && temp[index+1] == temp[length(temp)-1] && temp[index+2] == temp[length(temp)-2]) {
        #print("Palidrome!")
        palindromes[i] = i*j
        }
      }
  }
  palindromes = palindromes[!is.na(palindromes)]

}
max(palindromes)
4

##### Problem 5 #####
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



##### Problem 6 #####
# Sum Square Difference
x = 1:100
x2 = x^2
x2
sum(x2)

y = 1:100
y2 = sum(y)^2
y2
diff = y2 - sum(x2)
diff


##### Problem 7 #####
# 10001st Prime
x = primesieve(c(), 2:200000)
x[10001]


##### Problem 8 #####
# 13 Adjacent Digits

raw = c("7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450")

sequence = strsplit(raw, split = "")
sequence = unlist(sequence)

products = numeric()
for (i in 13:length(sequence)) {
  products[i-12] = as.numeric(sequence[i])*as.numeric(sequence[i-1])*as.numeric(sequence[i-2])*as.numeric(sequence[i-3])*as.numeric(sequence[i-4])*as.numeric(sequence[i-5])*as.numeric(sequence[i-6])*as.numeric(sequence[i-7])*as.numeric(sequence[i-8])*as.numeric(sequence[i-9])*as.numeric(sequence[i-10])*as.numeric(sequence[i-11])*as.numeric(sequence[i-12])
}
max(products)

# alternate method
length(sequence)
m = length(sequence) - 13
prod = 0
for (i in 1:m) {
  k = 1
  for (j in 1:13) {
    k = k*as.numeric(sequence[i + j])
  }
  if (k > prod) {
    prod = k
  }
}
prod



##### Problem 9 #####
# Pythogrean Triplet

nums = 1:20
x = logical()
for (i in 3:length(nums)) {
  x[i-2] = nums[i]^2 == (nums[i-1]^2 + nums[i-2]^2)
}
x





##### Problem 13 #####
# Large Sum
longstring = readLines("/users/nickbecker/documents/r workspace/euler 13.txt")
longstring
answer = sum(as.numeric(longstring))
print(answer, digits = 11)




##### Problem 14 #####
# Longest Collatz sequence


collatz = function(n) {
  count = 0
  while (n > 1) {
    if (n %% 2 == 0) {
      n = n / 2
      count = count + 1
    }
    else {
      n = 3 * n + 1
      count = count + 1
    }
  }
  return(count)
}

x = numeric(1e6)
for (i in 1:1000000) {
  x[i] = collatz(i)
}
which.max(x)

hist(x)


##### Problem 15 #####




##### Problem 16 #####
# power digit sum
library(gmp)
powersum = function(number, power) {
  big.num = as.bigz(number)
  big.num.power = big.num^power
  numsplit = unlist(strsplit(as.character(big.num.power), split = ""))
  digit.sum = sum(as.numeric(numsplit))
  digit.sum
}

powersum(2, 1000)




##### Problem 17 #####
# number letter counts

nletter.single <- nchar(c("one", "two", "three", "four", "five", "six", "seven", "eight", "nine"))
nletter.teen <- nchar(c("ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"))
nletter.ty <- nchar(c("twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"))
nletter.less100 <- sum(9 * nletter.single) + sum(nletter.teen) + sum(10 * nletter.ty)
nletter.hundreds <- sum(nletter.single) + 9 * nchar("hundred")
nletter.more100 <- 100 * nletter.hundreds + 99 * 9 * nchar("and") + 9 * nletter.less100
result <- nletter.less100 + nletter.more100 + nchar("onethousand")
result



##### Problem 30 #####
# 5th power sum
powerlist = numeric()
for (i in 2:2000000) {
  num = as.character(i)
  digits.char = unlist(strsplit(num, split = ""))
  digits.num = as.numeric(digits.char)
  fifth.power = sapply(digits.num, function(x) x^5)
  if (sum(fifth.power) == i) {
    print(i)
    powerlist = append(powerlist, i)
  }
}
sum(powerlist)






























































































































































