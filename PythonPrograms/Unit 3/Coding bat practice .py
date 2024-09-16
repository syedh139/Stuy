def Knowledge(info):
    sentences = info.split()
    first = sentences[0]
    accuracy = sentences [2]
    number = [int(word) for word in sentences[1:2]]
    reversed_numbers = []
    for x in number:
        reversed_numbers.append(str(x)[::-1])
        return f"{accuracy} {reversed_numbers} {first}"
#    result = f"{accuracy} {reversed_numbers} {first}"
 #   for i in result:
  #      return i

print(Knowledge("Syed 238948517 9")) 
