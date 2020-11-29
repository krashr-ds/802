


### Install seaborn before loading it
### For mac, type 'pip install seaborn' on terminal
### Below is how to install seaborn with other approaches  
### https://seaborn.pydata.org/installing.html

#%%
### imports
import numpy as np

# matplotlib
import matplotlib.pyplot as plt

## statistical data visualization
import seaborn as sns

# To show plots on jupyter notebook if using matplotlib - run this next line
# %matplotlib inline

#%% simulate 30 random numbers from the (0,1) interval and create a basic histogram

rand= np.random.rand(1000)

plt.hist(rand)

#%%

# load the built-in dataset of Seaborn
iris = sns.load_dataset('iris')
# view the first five observations
iris.head()

#%%

##### Univariate Histogram
### Histogram with frequencies
# default number of bins = 10
sns.distplot(iris['sepal_length'], kde=False)


#%%

### Histogram with density function estimated
# norm_hist option is on
sns.distplot(iris['sepal_length'], norm_hist=True, kde=True)


#%%

### kernel estimation function
# true/false will show the original histogram
sns.distplot(iris['sepal_length'], hist=True)


#%%

# a different way
sns.kdeplot(iris['sepal_length'])


#%%

### (option) customize graphics
# shaded under estimation curve
sns.kdeplot(iris['sepal_length'],shade=True)


#%%

# change color and vertical display
sns.kdeplot(iris['sepal_length'],shade=True, color='lightpink', vertical=True)


#%%

# change the bandwidths - smaller bandwidth means it performs estimation in smaller intervals
# smaller bandwidth will see a less smooth curve
sns.distplot(iris['sepal_length'], norm_hist=True, kde=False)
for bw in np.arange(0.1, 1, 0.2):
    sns.kdeplot(iris['sepal_length'], bw=bw, label=bw)


#%%

# plot histogram with kde
sns.distplot(iris['sepal_length'])


#%%

# more customizing
# note: kde_kws and hist_kws are dictionaries (key-value pairs)
sns.distplot(iris['sepal_length'], bins=25, 
             kde_kws={'color':'red', 'label':'KDE PLOT'}, 
             hist_kws={'color':'blue', 'label': 'HIST'})


#%%

### Boxplots - shows first and third quartiles, along with the median
sns.boxplot(iris['sepal_length'], orient='h')


#%%
# plot all numerical variables in one graph
sns.boxplot(data=iris, orient='v')


#%%:

### scatterplot with histograms of original data
sns.jointplot(iris['sepal_length'], iris['petal_length'])


#%%

# with regression fitted line
sns.jointplot(iris['sepal_length'], iris['petal_length'],kind='reg')


#%%

### Pairplot - shows scatterplots of all combinations of variables
sns.pairplot(data=iris)


#%%

# categorized by species
sns.pairplot(data=iris,hue='species')


#%%

### Regression plot
# linear - shows scatterplot with best fit linear trend
sns.lmplot('sepal_length', 'petal_length', iris)


#%%

# non-linear fit - trying order = 2 or 3 for quadratic or cubic
sns.lmplot('sepal_length', 'petal_length', iris, order=2,
           scatter_kws = {'marker':'o', 'color':'lightblue'})






