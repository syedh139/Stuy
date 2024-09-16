
#tens digit(n) --> Integer
# n - interger
#Discription : It returns the tens digit of n
def tens_digit (n):
    print ((n % 100) // 10)

tens_digit(10)
tens_digit(3456)
tens_digit(3)


# Magic value(n) --> Interger
# n - Integer
# Discription: It returns the sum of the tens and
# ones digit unless they equal, in which case
# it will retuen the ones degit
#examples:
# magic_value(136) --> 9
# magic_value(166) --> 6
# magic_value(6) --> 6