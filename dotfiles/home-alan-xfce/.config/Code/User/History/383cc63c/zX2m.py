import numpy as np

# create a numpy array
my_array = np.array([1,2,3,4])

# create a numpy array and specify the type
my_array2= np.array([5,6,7], dtype=np.int16)

# casting
my_array3 = my_array2.astype('f')
my_array3 = my_array2.astype(np.float64)

print(my_array)

# view object type
print(type(my_array))

# view numpy array dtype
print(my_array.dtype)
print(my_array2.dtype)
print(my_array3.dtype)
