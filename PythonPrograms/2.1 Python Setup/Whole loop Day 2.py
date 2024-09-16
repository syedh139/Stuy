#digit_sum(n) --> Integer
# n --> integer

#retuens the sum of the digits of n
#examples:
#digit_sum (135)--> 5 + 3 + 1 = 9
#digit_sum (45) --> 5 + 4 = 9

#def digit_sum(n):
#    sum = 0
 #   while n > 0:
  #      ones_digit = n % 10 # This returns the ones
   #     sum = sum + ones_digit
    #    n = n // 10 # removes the onces digit
   # return sum

#def count(n): # takes the input
#    counter = 0
 #   while n > 0:
  #      ones_digit = n % 10
   #     counter 
def fav_num(n, fave_num):
    while n > 1 :
        if n == fave_num:
            print("Found your favorite number: " + str(fave_num))
        print(n - 1)
        n -= 1

