# Problem 1
# Sum of numbers divisible by 3 and 5 less than 1000
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
