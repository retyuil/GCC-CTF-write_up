from time import time 
from random import randint 
from string import digits


with open("wordlist.txt","a") as f:
	for i in range(1000000):
		f.write((''.join([str(x) for x in [(int(x) ^ (int(time()) % 2 ^ randint(0, 2))) for x in [int(char) for char in str(digits[randint(0, 9)]) * 4]]])).rjust(8, '0'))
		f.write("\n")
