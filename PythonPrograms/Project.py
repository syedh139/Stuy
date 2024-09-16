import random
choices = ['rock', 'paper', 'scissors']
Number_of_rounds = input("how many rounds would you like to play?: ") 
user_choice = input("choose either rock, paper, or scissors: ")
computer_choice = random.choice(choices)
print (computer_choice)


#description: takes user input and generates computer choice
#contract: 



#description: decides whether computer or user wins
#contract: inputs: user_choice and computer_choice, outputs: winner/draw 


loss_count = 0
win_count = 0
draw_count = 0

def rock_paper_scissors (): 
    number_of_rounds = int(input('how many rounds would you like to play?: '))
    count = 0
    while count < number_of_rounds:
        user_choice = input("choose either rock, paper, or scissors: ")
        computer_choice = random.choice(choices)
        return decidewinner(computer_choice, user_choice)
