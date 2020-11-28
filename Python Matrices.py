

#%%

import numpy as np

#%% create a numpy matrix

new_matrix = np.matrix([[1, 2] , [3, 4]])

#%%

new_array = np.array([[1, 2], [3, 4]])

type(new_array)

#%% convert array to matrix

convert_matrix = np.asmatrix(new_array)

type(convert_matrix)

#%%

convert_matrix.shape

#%% inverse of a matrix

new_matrix.I

#%% to find inverse of an array, we must use a different function

np.linalg.inv(new_array)



#%%
a = np.matrix([[1,2],[3,4]])
b = np.matrix([[2,5],[1,3]])

#%% multiply 2 matrices
a*b



#%%

c = np.array([[1,2],[3,4]])
d = np.array([[2,5],[1,3]])

#%% performs multiplication incorrectly

c*d

#%% correct array multiplication

np.dot(c,d)



#%% diagonal of a matix (or array)

a.diagonal()

#%% create a diagonal array - off diagonal elements are 0

np.diag(np.diag(a))


#%%

test = np.matrix([[1, 2, 3], [4, 5, 6], [7, 8, 9]])



#%%

test_copy = np.zeros((3,3))

#%% transpose a matrix without .T function

for i in range(3):
    for j in range(3):
        test_copy[j, i] = test[i, j]


