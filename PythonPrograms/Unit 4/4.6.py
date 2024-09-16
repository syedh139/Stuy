import pprint as p

'''word_freq = {
    "hello": 56,
    "at": 23,
    "test": 43,
    "this": 78
}

word_to_add = 'test'
#you can use any of the prior methods to check the key exsists
if word_to_add in word_freq:
    word_freq[word_to_add] += 1
    # to increase the value associated with the key, which is the word_to_add
else: # add a  new key:value pair to the dictionary
    word_freq[word_to_add] = 1
print (word_freq)
'''

word_freq = {
    "Hello": 56,
    "at": 23,
    "test": 43,
    "this": 78
}

words_to_add = ["test","Hello","fish","bacon","bacon","fish","at","bacon","bacon",
                "fish","kevin",'test',"Hello","fish","bacon","bacon","fish","at",
                "bacon","kevin","bacon","kevin","bacon"]
for x in words_to_add:
    if words_to_add in word_freq:
        word_freq[words to add] += 1
        else:
        word_freq[words to add] = 1
print (word_freq)
