


#%%

import pandas

import numpy as np

#%% data frame from list

my_list = [ ('bill', 35), ('joe', 24), ('amy', 50) ]

df1 = pandas.DataFrame(my_list, columns = ['name', 'age'])

df1


#%% data frame from array 

my_array = np.array([[1,2],[3,4]])

df2 = pandas.DataFrame(my_array, columns = ['first', 'second'])

df2


#%% data frame from dictionary

raw_data = {'first_name': ['Jason', 'Molly', 'Tina', 'Jake', 'Amy'],
        'last_name': ['Miller', 'Jacobson', ".", 'Milner', 'Cooze'],
        'age': [42, 52, 36, 24, 73],
        'preTestScore': [4, 24, 31, ".", "."],
        'postTestScore': [25, 94, 57, 62, 70]}


df = pandas.DataFrame(raw_data, columns = ['first_name', 'last_name', 'age', 'preTestScore', 'postTestScore'])

df


#%% data frame from csv file

data = pandas.read_csv('E:/test.csv')

data

#%% select the 'first_name' column

b =df['first_name']

b.tolist()

#%% select multiple columns

df[ ['first_name', 'last_name'] ]

#%% select the first 2 columns

df[ [0,1] ]


#%% select first 2 rows from the data frame

df.iloc[0:2]

#%% select first, 3rd and 4th rows from the data frame

df.iloc[ [0, 2, 3] ]

#%% iloc selects based on row index

df.iloc[ :2]

#%% loc selects based on row name (label)

df.loc[ :2 ]

#%% select row 4 of age column

df.loc[3,'age']

#%% select row 4 of age column

df['age'][3]

#%% select row 4 of age column

df.iloc[ 3, 2 ]



#%% select people with ages > 50

df[df.age > 50]

#%% age > 50 and posttestscore > 70

df[(df.age>50) & (df.postTestScore > 70)]


#%% replace missing test scores

df.loc[ df['preTestScore'] == '.' , 'preTestScore' ] = 0


#%%

df['difference'] = df['postTestScore'] - df['preTestScore']

#%% concatenate 2 data frames

c = pandas.concat([data, df])


#%%

c.loc[0]

#%% this will renumber the row labels when we concatenate the data frames

c = pandas.concat([data, df], ignore_index=True)

#%% we can add labels to the separate data frames

c = pandas.concat([data, df], keys = ('x', 'y'))

#%% now we can keep track of which rows came from which data frame

c.loc['y']


#%% this will merge based on the row labels

c = pandas.concat([data, df], axis=1,join_axes=[data.index])


#%%

c = pandas.concat([data, df], axis=1,join='inner')

#%%

c = pandas.concat([data, df], axis=1,join='outer')


#%% inner join takes records which match both data frames

c = pandas.merge(data, df, on = ['first_name', 'last_name'], how='inner' )

#%% outer join takes records from both data frames and matches where possible

c = pandas.merge(data, df, on = ['first_name', 'last_name'], how='outer' )

#%% left join wil take everything from the 1st data frame

c = pandas.merge(data, df, on = ['first_name', 'last_name'], how='left' )

#%% right join will take everything from 2nd data frame

c = pandas.merge(data, df, on = ['first_name', 'last_name'], how='right' )



