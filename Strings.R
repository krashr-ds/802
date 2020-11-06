  ###################################
#
# Author: Joanna Gyory
# Date: 10/20/2020
#
###################################

##### Clearing your Environment #####

# It's good practice to clean your environment by
# removing objects you've created that you no longer
# need. To remove all objects from your environment,
# execute the line

rm(list = ls())

# Alternatively, you can click the tiny broom icon 
# under the "Environment" tab on the right.

##### Loading libraries #####

# After you've installed the 'tidyverse' library
# (see powerpoint file for instructions), you can
# use it by loading it with the library() function.

library(tidyverse)

# Every time you want to use this library in the
# future, you have to load it. It's not a one-time
# thing.

# When you load libraries, you often see warning
# messages in the console. It's good practice to
# check the warning messages, but most of the time, you
# will not need to do anything about the warnings
# that R gives you.


##### The stringr package #####

# The stringr package was created for working with
# string objects. All stringr functions begin with
# 'str_'.

# Find the length of the strings in a string vector

str_length(c("a", "Mississippi", NA))

# NA is a missing value, so its length will also be NA

# Combine two or more strings

stringa <- str_c("x", "y")
stringb <- str_c("x", "y", "z")
stringc <- str_c(stringa, stringb)

# Use the 'sep' argument to control how they're separated

stringd <- str_c("x", "y", "z", sep = ", ")
stringe <- str_c(stringa, stringb, sep = ":")

# R 'recycles' vectors when they are not equal in length

str_c("prefix-", c("a", "b", "c"), "-suffix")
# OUTPUT: "prefix-a-suffix" "prefix-b-suffix" "prefix-c-suffix"

##### Capitalization #####

x <- c("Dog", "Cat", "Mouse")

# Display in lower case

str_to_lower(x)

# Display in upper case

str_to_upper(x)

# Display with capitalized first letter

str_to_title(x)

##### Sort the items alphabetically #####

str_sort(x)

##### Trimming excess white space #####

str_trim("    String with trailing and leading white space   ")

str_squish("     String with trailing,     middle, and leading
           white space      ")

##### Padding strings #####

# Pad on the left with letter a's until the "123" string is 9
# characters long

str_pad("123", width = 9, side = "left", pad = "a")

# Pad on the right

str_pad("123", width = 9, side = "right", pad = "a")
# OUTPUT: aaaaaa123 - the final width is 9, add as many as as necessary, in this case 6 on the LEFT (puts the string on the right)

# Pad on both sides

str_pad("123", width = 9, side = "both", pad = "a")
# OUTPUT: aaa123aaa

##### Detecting Matches #####

# First make a vector that contains the names of fruits

fruit <- c("Apple", "Banana", "Orange", "Blueberry")

# Use str_detect to find out whether any of these fruit
# names contains an 'a'.

str_detect(fruit, "a")

# Notice that it did not count the capital A of 'Apple'
# because we specified a lower-case 'a'.

# Use str_which to find out the index of the words that
# have an 'a'.

str_which(fruit, "a")

# The second and third words have a's

# Use str_count to count the number of a's in each word

str_count(fruit, "a")

##### Subsetting strings #####

# Subset the fruit names so that we get the first three
# letters of each

str_sub(fruit, start = 1, end = 3)

# Subset them so that we get the last 3 letters

str_sub(fruit, start = -3, end = -1)

# Subset the list of fruits so that we only include
# fruits that have a letter 'e' in them

str_subset(fruit, "e")

# To view matches in the Viewer on the right hand side,
# use str_view

str_view(fruit, "e")

# Use anchors to match at the start or end of a string

str_view(fruit, "^a")

# None of the strings begin with an 'a'

str_view(fruit, "a$")

# One of the strings ends with an 'a'

# You can match entire words

x <- c("apple pie", "apple", "apple juice")
str_view(x, "apple")

str_view(x, "^apple$")

##### String formatting #####

# As in Python, the '%s' is the placeholder for a
# string. However, you must also use the 'sprintf()'
# function in R.

first = "Joanna"
last = "Gyory"

print(sprintf("my first name is %s. My last name is %s.", first, last))

##### Number formatting #####

# As in Python, we can specify how many decimal places we
# want to display for numbers.

  pi
  
  print(sprintf("pi to 2 decimal places is %.2f", pi))

print(sprintf("pi to 4 decimal places is %.4f", pi))
