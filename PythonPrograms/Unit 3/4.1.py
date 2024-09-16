

nums = [[1,2,3,4,5],
[2,4,6,8,10],
[3,6,9,12,15],
[4,8,12,16,20],
[5,10,15,20,25],
[6,12,18,24,30],
[7,14,21,28,35],
[8,16,24,32,40]]

for x in nums:
 print (x)
 
 s = ''
 for sub in nums:
     for i in sub:
         s += (str(i) + ' ')
     s += '\n'
print (s)

for sub in nums:
    print (str(sub).replace(',', '')[1:-1])
    
   
    
    

#add a multiple of 6 to the end of each sublist
for sub in nums:
    sub.append(sub[0] + sub[-1])
print (nums)

for i in range(len(nums)):
    nums[i].append(6 * (i + 1))
    
print(nums)