
# array shape

new_array4 = np.array([1,2,3,4])

print(new_array4.shape)

matrix1 = np.array([[1,2,3],[4,5,6],[7,8,9]])
print(matrix1.shape)
print(matrix1.reshape)
matrix2 = np.array([[1,2,3],[4,5,6]])
print(matrix2.shape)
print(matrix2.reshape)

new_array4 = np.array([1,2,3,4,5,6,7,8,9,10,11,12])
new_array5 = new_array4.reshape(3,4).copy()
print(new_array4)

print(new_array5)


##  convert an array to unidmensional shape. Creates a copy. 
new_array6 = new_array5.flatten()