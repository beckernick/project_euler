# -*- coding: utf-8 -*-
"""
Created on Thu Dec 24 14:15:10 2015

@author: nickbecker
"""

'''
Project Euler 22
Name Scores

Using a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order.
Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.
For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list.
So, COLIN would obtain a score of 938 × 53 = 49714.

What is the total of all the name scores in the file?

'''

import string


names_raw = open("/users/nickbecker/downloads/euler_22_names.txt", 'r')
names = names_raw.read()
names = names.split(',')
names_sorted = sorted(names)

# create the letter:value dictionary
letters = list(string.ascii_uppercase)
letter_values = list(range(1,27))
letter_value_dictionary = {}

for i in range(len(letters)):
    letter_value_dictionary[letters[i]] = letter_values[i]

# calculate the scores for each name and total file
total_file_score = 0
for i in range(len(names_sorted)):
    name_letters = list(names_sorted[i])
    name_value = [letter_value_dictionary[x] for x in name_letters]
    name_value_sum = sum(name_value)
    name_score = name_value_sum*(i+1)
    total_file_score += name_score
    if i == 937:
        print(name_score)
        print(names_sorted[i])
    
print(total_file_score)
    