#
# Iterators Homework 11/6/2020
# K. Rasku RN
# HDS 802 E-Term 2 2020
#

# 1. Use a for loop to remove duplicates from a list

def removeDupes(inList):
    outList = inList
    for i in inList:
        if outList.count(i) > 1:
            outList.remove(i)
    return outList


listToClean = [1, 'a', 2, 2, 3, 'b', [1, 2, 3], [1, 2, 3]]
anotherListToClean = ['holly', 2, 2, 3.1415, 'holly', 2, 'george']
print("The new list is: " + str(removeDupes(listToClean)))
print("The new list is: " + str(removeDupes(anotherListToClean)))

# 2. Quadratic:
#    a is x^2 coefficient, b is x coefficient and c is constant
#    returns 2 real roots, 1 real root or no real roots

import math


def quadratic(a, b, c):
    d = b * b - 4 * a * c
    rt = math.sqrt(abs(d))
    if d > 0:
        return [(-b + rt) / (2 * a), (-b - rt) / (2 * a)]
    elif d == 0:
        return [-b / (2 * a)]
    else:
        # no real solutions
        print("There are no real solutions.")
        return []


print(str(quadratic(1, 5, 6)))
print(str(quadratic(1, 6, 9)))
print(str(quadratic(1, 4, 10)))


# 3. printString
#    print every other letter of a string, unless it is a whitespace

def printString(inString):
    inList = list(inString)
    l = len(inList)
    for i in range(0, l, 2):
        if inList[i] != " ":
            print(str(inList[i]))
    print("\r")
    return 0


printString('here is my string')
printString('python')
printString(' p y t h o n')


# 4. Fibonacci numbers
#    Use a for loop
#    Note: I also used a sub function


def fibTerm(n):
    if n == 0:
        return 0
    elif n == 1:
        return 1
    else:
        return fibTerm(n - 1) + fibTerm(n - 2)


def fibonacci(numItems):
    numItems = int(numItems)
    e = 0
    for i in range(numItems + 1):
        e = fibTerm(i)
        if i == numItems:
            return e


print(str(fibonacci(1)))
print(str(fibonacci(2)))
print(str(fibonacci(8)))
print(str(fibonacci(10)))
print(str(fibonacci(25)))
print("\r")


# 5. Collatz
#    For any positive integer n, if n%2==0: n/2 else n*3+1
#    Perform operations until the value 1 is reached

def collatz(n):
    steps = []
    n = abs(int(n))
    steps.append(n)
    while n > 1:
        if n % 2 == 0:
            n = int(n / 2)
            steps.append(n)
        else:
            n = int((n * 3) + 1)
            steps.append(n)

    print(str(steps) + "\r")


collatz(20)
collatz(19)
collatz(59)
