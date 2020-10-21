

True and 3 > 4 or 6 < 7

#%%
False or not True and True

#%%

True and not(False or 5 > 4 and 3 < 2) 

#%%

5**2 == 25 and True and not False

#%%

3 != 4 or 4 == 4 and not 3 == 4

#%%

x = 5

if x > 4: 
    print("x is greater than 4")

#%%

x = 3

if x >4:
    print("x is greater than 4")
else:
    print("x is not greater than 4")
    
#%%
x = 3

if x > 4:
    print("x is greater than 4")
if x > 2 :
    print("x is greater than 2")
if x < 2.5:
    print("x is less than 2.5")
else:
    print("x is not ...")
   
#%%
x = 3

if x > 1 and x < 2:
    print("x is between 1 and 2")
elif x==2:
    print("x is 2")
elif x > 2 and x < 4:
    print("x is between 2 and 4")
else:
    print("something")

#%% try this one for yourself

x = 1.5
y = 2

if x > 1 and x < 2:
    print ('a')
    if y > 1 and y < 2:
        print ('b')
    else:
        print ('c')
else:
    print('d')
