import random
#def fib_numbers(n):
#    guess = 0
#    while n > 0

score = "Hello, my friends"
#print (score[1:14:6])
print(score.replace("friends", "enemies"))


def most_common_char(s):
    m = ord("s")
    return m
print (most_common_char("hello"))

def split_line (s):
   line = s.split("\n")
   return line

    
    
    
 
roster_data = '''period1 Toby
period1 John
period1 Malia
period2 Yuxin
period2 Nabiha
period2 Jonathan
period2 Carlos
period3 Sasha
period3 Alma
period3 Annie
period3 Arthur
period3 Alexander'''
s = roster_data 
print (split_line(s))



def count_students(i):
    x = len(i)
    return x

Students = ['period1 Toby', 'period1 John', 'period1 Malia', 'period2 Yuxin', 'period2 Nabiha', 'period2 Jonathan', 'period2 Carlos', 'period3 Sasha', 'period3 Alma', 'period3 Annie', 'period3 Arthur', 'period3 Alexander']
i = Students
print (count_students(i))

#random_num(0, limit):
    
#Write fib_numbers(n) where n is the nth term
#of the sequence and the return value is a list
#of the Fibonacci numbers between 0 and n, inclusive:

'''def fib_numbers(n):
    if n == 0:
        return [0]
    if n == 1:
        return [0]
    fib = [0, 1]
    counter = 1
    while counter < 1:
        fib.append(fib(-1) + (fib(-2)))
        counter += 1
        print (counter)
        
def draw_fib(n):
    fibs = n
    s = ''
    for num in fibs:
        s += '*' * num + '\n'
    return s
print (draw_fib(6))

'''

def most_common_char(s):
    hi_count = 0
    most_common = ''
    for char in s:
        if s.count(char) > hi_count:
            hi_count = s.count(char)
            most_common = char
    return most_common

print(most_common_char('hello'))
print(most_common_char("AABCDD"))