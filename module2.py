
number1 = 3
number2 = 3.1
print(number1)
print(number2)
type(number1)
type(number2)
print(number1, number2)

my_string = "we need they're put quotes here"
esc_string = 'or can they\'re escape?'

print(my_string)
print(esc_string)
type(my_string)

my_string = 'hello'
first_letter = my_string[0]
print(first_letter)
'hello'[0]
my_string[0:2]
len(my_string)
length = len(my_string)
my_string[length-1]
my_string.upper()

print("string one " + "string two")
my_name = "Bogdan"
my_age = 26
print("My name is" ,my_name, "and my age is"  + str(my_age))
print ("My name is" ,my_name, "and my age is" , my_age)

first = "Bogdan"
last = "Gadidov"
print ("My first name is %s. My last name is %s" %(first, last))
pi = 3.14159
print ("pi to 2 decimal places is %.2f" %(pi))
print ("pi to 4 decimal places is %.4f" %(pi))
x = 3
my_list = [2, x, "a string", [1, 2, "another string"] ]
print(my_list)
len(my_list)
my_list[0]
my_list[3]
my_list[0] = 4
my_list.append(5)
my_list.insert(2,'new item')
my_list[:3]
my_list[1:4]
my_list.index(3)
my_list[2][0]
my_list[4][0]
my_list[4][2][3]
del my_list[2]
a_tuple = (1, 2, "string")
a_tuple[0]

len(a_tuple)
# causes an error:
# a_tuple[0] = 'new value'

my_dictionary = {'item 1':3, 'item 2':4, 'item 3':5 }
my_dictionary['item 3'] = 6
my_dictionary['item 4'] = 17
my_dictionary[3] = 'new'
my_dictionary[3]
