def remove_zeroes(lst):
#    new_list = []
#    for x in lst:
#        if x!= 0:
#            new_list.append(x)
#    while lst.count(0) > 0:
#        lst.remove(0)
    #for i in lst:
    #    if i==0:
    #        lst.remove(i)
    #return lst


    count = 0
    while count < len(lst):
        if lst[count] == 0:
            lst.remove(0)
            count += 1
    return lst
    
    while 0 in lst:
        lst.remove(0)
        return lst



print(remove_zeroes([0,0,0,1,2]))

def remove_empties(lst):
    #final = list(filter(None, lst))
    #return final
    return [y for y in lst if y !=[]]    
    
print(remove_empties([[0, 1], [], [], [3]]))

    