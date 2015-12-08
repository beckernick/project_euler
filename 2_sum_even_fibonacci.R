# Problem 2
# Sum of even valued fibonacci numbers under 4 million

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
