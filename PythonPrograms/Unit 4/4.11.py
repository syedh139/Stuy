def remove_empties(lst):
    final = list(filter(None, lst))
    return final
    #return [y for y in lst if y !=[]]    
    
print(remove_empties([[0, 1], [], [], [3]]))

