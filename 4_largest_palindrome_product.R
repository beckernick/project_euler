# Problem 4
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
