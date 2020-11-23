#
# Functions Homework 10/22/2020
# K. Rasku RN
# HDS 802 E-Term 2 2020
#

def m2km(miles):
    return miles * 1.6


m = float(input("Enter the number of miles to convert "))
print(m2km(m))


def calcBMI(height, weight):
    try:
        return round(703 * (float(weight) / (float(height)**2)), 1)

    except:
        print("Unable to calculate BMI, something went wrong.")
        return 0


h = input("Enter your height in inches: ")
w = input("Enter your weight in pounds: ")
print("Your BMI is " + str(calcBMI(h, w)))


def convertSeconds(s):
    try:
        s = int(s)
        hours = int(s/3600)
        minutes = int((s-(hours*3600))/60)
        seconds = (s-(hours*3600)) % 60
        return hours, minutes, seconds

    except:
        print("Unable to convert seconds, something went wrong.")
        return 0, 0, 0


t = convertSeconds(45671)
print("45,671 seconds is " + str(t[0]) + " hours, " + str(t[1]) + " minutes, and " + str(t[2]) + " seconds.")

t2 = convertSeconds(568911)
print("568,911 seconds is " + str(t2[0]) + " hours, " + str(t2[1]) + " minutes, and " + str(t2[2]) + " seconds.")

t3 = convertSeconds(10000)
print("10,000 seconds is " + str(t3[0]) + " hours, " + str(t3[1]) + " minutes, and " + str(t3[2]) + " seconds.")

secs = input("Enter the number of seconds to convert: ")
t4 = convertSeconds(secs)
print(str(secs) + " seconds is " + str(t4[0]) + " hours, " + str(t4[1]) + " minutes, and " + str(t4[2]) + " seconds.")


def smoreFactory(grahams, marshmallows, chocolate):
    gneed = 2
    marshneed = 1
    choconeed = 3
    gmake = int(int(grahams)/gneed)
    mmake = int(int(marshmallows)/marshneed)
    cmake = int(int(chocolate)/choconeed)
    return min(gmake, mmake, cmake)


g = input("Enter the number of graham crackers you have: ")
m = input("Enter the number of marshmallows you have: ")
c = input("Enter the number of pieces of chocolate you have: ")
print("You can make " + str(smoreFactory(g,m,c)) + " s'mores with your supplies.")

