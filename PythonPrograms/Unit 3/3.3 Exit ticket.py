#DOCUMENTATION
#code for a function called count_consonants(s)
#that returns the number of occurrences of consonants
#in the string s. Assume s is 0 or more characters long.

def count_consonants(s):
    consonants = 'BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz'
    counter = 0
    for char in s:
        if char in consonants:
            counter = counter + 1
    return counter

s917 = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
print(count_consonants(s917))

s718 = "I will rob the bank of Spain with Money Hiest"
print(count_consonants(s718))

s347 = "Messi is the GOAT"
print(count_consonants(s347))

#********************NOTE**************************
#Sorry I forgot how to use the while loop to acomplish this task.
#In class we used a singular letter and dettermined if it's a vowel or not.
#However, in this context we have to play with characters within a word.
#So I used the "for loop" that you showed us in class
#Hope you will not mind