# -*- coding: utf-8 -*-
"""
Created on Wed Dec 23 20:03:20 2015

@author: nickbecker
"""

'''
Project Euler 30
Digit 5th Powers
'''

digit_5th_power_matches = []

for num in range(2, 10000000):
    str_digits = list(str(num))
    num_digits = [int(x) for x in str_digits]
    digits_5th = [x**5 for x in num_digits]
    digits_5th_sum = sum(digits_5th)
    
    if digits_5th_sum == num:
        print(num)
        digit_5th_power_matches.append(num)
        
print(sum(digit_5th_power_matches))


