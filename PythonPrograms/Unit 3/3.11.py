'''def compareaverage(s):
    s = data
    data = "period3 Mikaela 84 43 88 22 45"

# Split the input string into a list of strings
    input_list = data.split()

# Extract the name and numbers
    name = input_list[1]
    period = input_list[0]
    numbers = [int(x) for x in input_list[2:]]

# Calculate the average score
    Compare_Average = sum(numbers) / len(numbers)

# Print the result
    return(f"{period} -->{name}:{Compare_Average}")

print (compareaverage(s))
'''

'''def calculate_Compare_Average(data):
    data = "period1 Emma 79 82 87 90 85"
    # Split the input string into a list of strings
    input_list = data.split()

    # Extract the name and numbers
    name = input_list[1]
    numbers = [int(x) for x in data[2:]]

    # Calculate the average score
    Compare_Average = sum(numbers) / len(numbers)

    # Return the result
    return Compare_Average
'''

def Compare_Average(data):
        # Split the input string into a list of single words
        sentences = data.split()
    # Take out the name and numbers from the words list
        name = sentences[1]
        period = sentences[0]
        numbers = [int(word) for word in sentences[2:]]
    # My dad told me we can use string slicing instead
    #Will try to find the lowest number
        lowest_number = min(numbers)
    # Calculate the average score (after the lowest exam dropped)
        after_avg_score = (sum(numbers) - lowest_number) / (len(numbers) - 1)
    #it will find the normal average
        avg_score = sum(numbers) / len(numbers)
    # Return a formatted string with the name and average (
    #after dropped) and and normal average
        return f"{period} {name} {avg_score} {after_avg_score}"
    
print (Compare_Average("period1 Dave 10 20 30"))
print (Compare_Average("period1 Kay 100 20 90 88 95"))


#data = "period1 Dave 10 20 30"
#data = "period1 Kay 100 20 90 88 95"
#print Compare_Average("period1 Dave 10 20 30")