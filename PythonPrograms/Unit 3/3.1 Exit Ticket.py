#Documentation
#Write a function called is_question(str) that
#accepts a string called str and returns True only
#if the last character
#of str is ‘?’ and returns False otherwise.

#Contract
#Take a string value and justify it has a ? as the last character
#If it has a ? at the end, the results true
#or false otherwise
def is_question (str): #Takes an input
    a=str
    if (a[-1]) == '?':
        return True
    else:
        return False

#TEST CASES


is_question ('Mr. Mykolyk:(')
is_question ('Mr.Dillon:)')
is_question ('Ms. Alanso ??')

