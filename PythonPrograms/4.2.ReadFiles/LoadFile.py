with open('data.txt','r') as text:
  #UNCOMMENT ONE of these:
  #something = text.read()
  #something = text.read(8)
  #something = text.readlines()
  something = text.readline()
  print(something)
