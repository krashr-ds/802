# Iterator Challenge Questions - Module 4
# K Rasku RN

# FOR LOOPS
# 1. Print the first 10 multiples of 3 (3 - 30)

def m3():
    for i in range(3, 33, 3):
        print(i)


m3()


# 2. Sum a list without sum function

def sumSansSum(input_list):
    s = 0
    for i in input_list:
        s += i
    return s


list_of_whatever = [1, 23, -4, 18, -6]
print("My list is: " + str(list_of_whatever))
print("The sum of my list is: " + str(sumSansSum(list_of_whatever)))


# 3. Do vector squaring using a list

def squareVector(intList):
    outV = []
    for i in intList:
        outV.append(i ** 2)
    return outV


print("My list is [2,22,87,-60]. My list squared is: " + str(squareVector([2, 22, 87, -60])))


# WHILE LOOPS

# Factorial Function with while
# Note: This builds factorial from large to small, while for loop version builds from small to large

def factWhile(n):
    f = 1
    while n > 1:
        f *= n
        n -= 1
    return f


toFact = input("Enter the number you wish the factorial of: ")
print("The factorial of " + str(toFact) + " is " + str(factWhile(int(toFact))))


# Given principle and interest rate (and annual compounding), return the number of years necessary to reach $10,000

def reachTenThousand(p, i):
    limit = 10000.0
    y = 0
    if p > 0 and i > 0:
        while p < limit:
            p = p + (p * i)
            y += 1
    return y


principle = input("Enter the principle: ")
interest = input("Enter the interest rate: ")
print("At you interest rate of " + str(interest) + ", you will reach your goal of $10,000 in " + str(
    reachTenThousand(float(principle), float(interest))) + " years.")


# While implementation of mod
# (This was so silly, I almost couldn't do it)

def whileMod(dividend, divisor):
    dividend = float(dividend)
    divisor = float(divisor)
    while dividend >= divisor:
        dividend = dividend - divisor
    return int(dividend)


print("12%3: " + str(whileMod(12,3)))
print("10%3: " + str(whileMod(10,3)))
print("16%7: " + str(whileMod(16,7)))

