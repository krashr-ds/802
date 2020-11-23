#
# Conditionals, Loops & Dictionaries 11/22/2020
# K. Rasku RN
# HDS 802 E-Term 2 2020
#

# 1. Capitals dictionary

def capitals():
    capDict = {"Alaska": "Juneau", "Idaho": "Boise", "Missouri": "Jefferson City", "South Dakota": "Pierre", "Washington": "Olympia"}
    print(capDict.keys())
    s = str(input("Type the name of a state to know it's capital: "))
    while len(capDict) > 0:
        try:
            if len(s) > 0:
                print(capDict.pop(s))
                if len(capDict) == 0:
                    break
            a = str(input("Do you want to know any others? (yes/no)"))
            if a == "no":
                return
            elif a == "yes":
                print(capDict.keys())
                s = str(input("Type the name of a state to know it's capital: "))
            else:
                s = ""
                continue
        except:
            print("Sorry, state not in list.")
            print("\r\r\r")
            return
    print("\r")
    print("Exiting; no states left!")
    print("\r\r\r")
    return


capitals()


# 2. Score

def score(uscore, compscore):
    if uscore == 3 or compscore == 3:
        if uscore > compscore:
            print("You have won!")
        else:
            print("The computer has won!")
        print("The final score is " + str(uscore) + " to " + str(compscore) + ".")
        return 1
    else:
        print("The score is " + str(uscore) + " to " + str(compscore) + ".")
        if uscore > compscore:
            print("You are leading")
        elif uscore == compscore:
            print("It's tied!")
        else:
            print("The computer is leading")
    return 0

# 3. RPSgame function
#     a. Rock Paper Scissors game
#     b. Using randint to generate response
#     c. Calls the score function


def RPSgame():
    import random

    print("Welcome to the game!")
    print("Choose 'r' for Rock, 'p' for Paper, or 's' for Scissors.")
    print("Remember:")
    print("\tRock crushes scissors.")
    print("\tPaper covers rock.")
    print("\tScissors cut paper.")
    print("\tIf the computer chooses the same thing, it's a tie.")
    print("\tThe computer will choose a response at random.")
    print("Good luck and have fun!\r")

    winner = 0
    responseList = ["r", "p", "s"]
    u = 0
    c = 0
    while winner == 0:
        res = input("Choose r/p/s: ")
        cres = responseList[random.randint(0, 2)]
        print("You: " + res + " The computer: " + cres)
        if res == cres:
            u = u+0
            c = c+0
        elif (res == "r" and cres == "s") or (res == "p" and cres == "r") or (res == "s" and cres == "p"):
            u = u+1
            c = c+0
        else:
            u = u+0
            c = c+1
        winner = score(u, c)
    print("\rThanks for playing!")
    return


RPSgame()
