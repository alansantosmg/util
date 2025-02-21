
# In python you must define a function before call it
 
# tipical function
def multiply(x,y):
    product = x * y
    return product

# Call the function
num = multiply(2,4)
print(num)


# All functions in python returns a value, even None value. 
# Not all functions need a return statement
def greet(name):
    print(f'Hello {name}!')
    
greet('Dave')

return_value = greet('Dave')
print(return_value)


# Use docstring to document a function
def multiply(x,y):
    """Return the product of two numbers x and y."""
    product = x * y
    return product


# get help about function  - example
help(multiply)