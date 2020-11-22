

#%% the break here will end the for loop once i = 7

for i in range(15):
    print (i)
    if i == 7:
        break
    
    
#%%

def interest2(deposit, interest):
    total = deposit
    for years in range(1,100):
        total = total*(1+interest)
        if total > 10000:
            break
    return years

interest2(1000, 0.03)


#%% this will only print even numbers in range(10)

for i in range(10):
    if i%2 == 1:
        continue
    print(i)
    
#%% try and except

x = 0

try:
    print(10/x)
except:
    print("sorry can't divide by 0")
    
#%%

x = 0
#x = 7
#x = 'string'
#del x

try:
    print(10/x)
except NameError:
    print("sorry I don't recognize that variable")
except TypeError:
    print("sorry wrong type of variable")
except:
    print("sorry cannot divide by 0")
    


    