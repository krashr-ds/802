#
# PANDAS DataFrames 11/30/2020
# K. Rasku RN
# HDS 802 E-Term 2 2020
#

import pandas
import numpy as np

# 1. Read in Two CSV Files
#    baseball1.csv - 47 rows, 6 columns: First Last R H AB and League
#    baseball2.csv - 47 rows, 6 columns: First Last 2B 3B HR RBI

df1 = pandas.read_csv("baseball1.csv")
df2 = pandas.read_csv("baseball2.csv")

# 2. Merge on First Name only
# How many rows? 53 rows, 11 columns
# What happens? Each first name is repeated with the first last name found,
# and then all the other last names are added in a column called "Last_y".
# So, if you have a player named Adam Eaton, a player named Adam Duvall and
# a player named Adam Jones, the name Adam Eaton is repeated 3 times, and
# the other last names are listed under 'Last_y'.  Then, the name Adam
# Duvall is repeated 3 times and the other 3 names are listed under 'Last_y'


df3 = pandas.merge(df1, df2, on=["First"], how="inner")


# 3. Merge on First Name and Last Name
# How many rows? 47 rows, 10 columns (as expected)

df4 = pandas.merge(df1, df2, on=["First", "Last"], how="inner")


# 4. Only players with more than 80 runs
# How many players? 22 players

df5 = df4[df4.R > 80]

# 5. Recreate the data frame from question 4, but re-number the row locations

df6 = df5.reset_index(drop=True)


# 6. From the merged data in part 3, create a new data frame with players that have > 30 doubles and play in the AL league
# How many meet criteria? 8 players meet the criteria

df7 = df4[(df4["LEAGUE"] == "AL") & (df4["2B"] > 30)]

# 7. From the merged data in part 3, create a new data frame with players that have > 5 triples OR > 30 runs
# How many meet criteria? Fifteen.

df8 = df4[(df4["3B"] > 5) | (df4["HR"] > 30)]

# 8. From the merged data in part 3, create a new column called 'avg' that contains each player's average (h / ab)

df4["AVG"] = df4["H"] / df4["AB"]

# 9. Sort the data frame from part 8 descending by 'avg'

df9 = df4.sort_values(by="AVG", ascending=False)
df9 = df9.iloc[0:10]

# 10. From the data frame in part 9, create a new data frame that only contains: First Last R 3B and RBI

df10 = df9[ ["First", "Last", "R", "3B", "RBI"] ]
df10 = df10.reset_index(drop=True)
