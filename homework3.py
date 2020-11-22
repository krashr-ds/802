#
# Recursion & Error Handling 11/22/2020
# K. Rasku RN
# HDS 802 E-Term 2 2020
#

# 1. Fibonacci function
#    a. use a while loop
#    b. call it fibonacci2
#    c. argument is a positive integer, n


def fibTerm(n):
    if n <= 1:
        return n
    else:
        return fibTerm(n - 1) + fibTerm(n - 2)


def fibonacci2(numItems):
    numItems = int(numItems)
    e = 0
    i = 0
    while i < numItems + 1:
        e = fibTerm(i)
        i = i + 1
    return e


print(str(fibonacci2(1)))
print(str(fibonacci2(2)))
print(str(fibonacci2(5)))
print(str(fibonacci2(10)))
print(str(fibonacci2(25)))
print("\r")

# 2. Fibonacci recursive function
#    a. use a recursive function
#    b. call it fibonacci3


def fibonacci3(n):
    if n <= 1:
        return n
    else:
        return fibonacci3(n-1) + fibonacci3(n-2)


print(str(fibonacci3(1)))
print(str(fibonacci3(5)))
print(str(fibonacci3(8)))
print(str(fibonacci3(10)))
print(str(fibonacci3(25)))
print("\r")

# 3. Multiplication Table function
#    a. print multiplication tables, 1 to n
#    b. argument is a positive integer, n
#    c. output is n x n table


def mult_table(i, n):
    if i > n:
        print("\r")
        return
    else:
        c = 1
        while c < n + 1:
            print(str(i) + str(" ") + str(c) + str(" ") + str(i*c) + "\t", end='')
            c = c + 1
        print("\r")
        return mult_table(i+1, n)


print(str(mult_table(1, 3)))
print(str(mult_table(1, 5)))
print(str(mult_table(1, 10)))

# 4. Calculations
#    a. inputs: number, operator (+, -, *, /, **), number or power
#    b. no error checking


def calc():
    n1 = input("Enter a number: ")
    o = input("Enter an operator (+, -, *, / or **): ")
    if o == "**":
        n2 = input("To what power? ")
    else:
        n2 = input("Enter another number: ")
    expr = n1 + o + n2
    print("Your answer is: " + str(eval(expr)))


calc()



