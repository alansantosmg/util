

# Static methods are methods of a class

$x |get-member -Static

# To use a static method, first refer to the class



# Example 1 - class datetime

# Filtering the static members of the class
[datetime].GetMembers() |Where-Object {$_.isStatic} |
Select-Object -Property Name,MemberType -unique |
sort-Object MemberType,Name
 
# Using parameters
[datetime]::IsLeapYear(2024)




# Example 2

# Filtering the static members of the class
[math].GetMembers()|
Where-Object {$_.isStatic}|
Select-Object -Property Name,MemberType -unique |
sort-Object MemberType,Name

 # view the selected class method parameters
[math]::Pow.OverloadDefinitions    

 # using parameters
[math]::Pow(2,3)                   
