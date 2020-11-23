


#%%
import numpy
#%%
numpy.sqrt(5)
#%%
import numpy as np

#%%
np.sqrt(5)
#%%
from numpy import sqrt as sq, cbrt as cu
#%%
sq(5)
#%%
cu(8)

#%%
a = np.array([1,2,3])

print(a)
type(a)

#%%

a.shape
#%%
b = np.array([[1,2],[3,4],[5,6]])

print(b)

#%%
b.shape

#%%
from numpy import array as ar
#%%
new_array = ar([[1,2],[3,4],[5,6]])


#%%

a = np.array([[1, 2, 3]])

a.shape
#%% column array
c = np.array([[1],[2],[3]])

c.shape

#%%

b = np.array([[1,2],[3,4],[5,6]])

b

#%% first row, first column of b
b[0][0]
#%% 3rd row, 2nd column of b
b[2][1]
#%% 3rd row, 2nd column of b
b[2,1]
#%% entire 2nd column of b
b[:,1]
#%% entire 2nd row of b
b[1,:]

#%% add a row to b
c = np.vstack((b,[7,8]))

#%% add a column to c
np.hstack((c,[[9],[10],[11],[12]]))

#%% row array

d = np.array([9,10,11,12])

d
#%%reshape to column
d = d.reshape(4,1)

d
#%% we can do this in one step
d = np.array([9,10,11,12]).reshape(4,1)
#%%
e = np.hstack((c,d))

#%% axis = 0 concatenates by row
new_row = np.array([[7,8]])  

np.concatenate((b,new_row),axis=0)

#%% axis = 1 concatenates by column
new_col = np.array([[7], [8], [9]])

np.concatenate((b,new_col),axis=1)


#%%
a = np.array([[1,2],[3,4]])
b = np.array([[5,6],[7,8]])
#%% use append function to combine arrays
new = np.append(a,b)
#%% axis = 0 adds new rows
new2 = np.append(a,b,axis=0)

new2
#%% axis = 1 adds new columns
new3 = np.append(a,b,axis=1)

new3


#%% 
np.arange(25)
#%%
np.arange(25).reshape(5,5)
#%% range of numbers between 0 and 25 - multiples of 2
np.arange(0,25,2)


#%% creates an interval 0 - 100 with 6 evenly spaced points
np.linspace(0,100,6)

#%% interval between 25 and 50 with 8 evenly spaced points
np.linspace(25,50,8).reshape(4,2)


#%% 3x3 array of zeros
f = np.zeros((3,3))

#%% 4x2 array of ones
g = np.ones((4,2))


#%% column sums axis = 0

col_sum = np.sum(g,axis=0)

col_sum
#%% rwo sums axis = 1
row_sum = np.sum(g,axis=1)

row_sum

#%% generate random numbers on interval (0,1)
rand = np.random.rand(20).reshape(5,4)

rand

#%% find mean

np.mean(rand)


#%% find the standard deviation

np.std(rand, ddof=1)


#%% subset our array based on some condition - take values less than 0.10 or greater than 0.90

rand[ ( 0.10 > rand ) | (rand > 0.90 ) ]


#%% generate random integers in some interval - here from 0,8 and generating 10 numbers

randint = np.random.randint(0,8,10)

randint

#%%

array = np.array( [[ 1, 2], [3, 4], [5, 6]] )

#%% find the number of rows and columns from array

numrows = array.shape[0]


numcols = array.shape[1]


#%% print elements from a 2-D array

for i in range(numrows):
    for j in range(numcols):
        print(array[i,j])
        
    
#%%

for i in range(numcols):
    for j in range(numrows):
        print(array[j,i])
        


