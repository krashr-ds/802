

#%%
my_list = [1, 2, 3, 4]

for number in my_list:
    print (number**2)


#%%

for number in range(5):
    print (number)

    
#%%

my_list = ['cat', 4, 'dog', 'python', 5]

for number in range(5):
    print (my_list[number])
    

#%% we do not have to refer to the elements of my_list by their index

for i in my_list:
    print (i)
    
#%% print every other item in my_list - this will only print even index positions

for number in range(5):
    if number %2 == 0:  
        print(my_list[number])

#%% alternative to the above

for number in range(0, 5, 2):
    print(my_list[number])
    
    
#%% factorial function





#%% print multiples of 3 from 3 to 30



    
#%% find the sum of a list with a for loop

my_list = [1, 2, 3, 4, 5]



#%% create a new list with the squares of existing list

my_list = [1, 2, 3, 4, 5]



#%% 2 for loops

for i in range(3):
    for j in range(3):
        print('i is', i, 'and j is', j)



