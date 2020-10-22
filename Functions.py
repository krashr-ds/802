

#%% prompt the user for their name

name = input("what is your name? ")

print ("Hello " + name)

#%% prompt the user to enter a number

number = input("enter a number:   ")

#%% print the number squared

print ("Your number squared is " + str( float(number)**2 )) 

print ("Your number squared is" , float(number)**2)

#%% craeting a function called new_function

def new_function():
    print ("this is a function")

new_function()

#%%

def new_function2(parameter1, parameter2):
    print(parameter1)
    print(parameter2)

#%% call the funcion
    
new_function2("word1", "word2")



#%% try for yourself example

def new_function3(name):
    print ("hello " + name)
    
new_function3('Bogdan')

#%%

def square(n):
    print (n**2)
    
#%%

square(4)

#%%

a = square(4)

#%%

print (a)

#%% function with a return statement

def square(n):
    return n**2


#%%

square(4)

#%%

a= square(4)
print (a)


#%%

def square_and_cube(n):
    square = n**2
    cube = n**3
    return square, cube

#%% store the square and cube of 5 in two objects a and b

a , b= square_and_cube(5)

print(a)
print(b)

#%% this stores the square and cube in a tuple

c = square_and_cube(5)

# c is a tuple, we can access an element by indexing c[0]

#%%

def divider(numerator, denominator):
    quotient = numerator/denominator
    return quotient

#%% what are numerator and denominator equal to after calling divider(10,5)

numerator = 3
denominator = 7

divider(10,5)


#%%

n = 2
 
def add1(n):
    n = n + 1
    return n

add1(n)

#%%

number = add1(n)

print(number)

#%% n is still 2 
print(n)