# hashtable is a dictionary

# Create a hash table
# 
$h = @{name='alan';Count=3}
$h
$h.name

# Create a empty hashtable
$ht  =@{}
$ht

# Create a ordered Hastable
$ho = [ordered]@{First=100;Second=200;"My Test"=300}
$ho


# Add element to a hashtable

$h.add("version","5.1")
$h

# get elements from hashtable keys
$h["Version"]
$h.name
$h.Count
$h.Item("name")

# modify hashtable
$h.count ++
$h.count += 7 
$h["name"]="Darlan da silva"
$h

# show keys from hashtable
$h.Keys

# show values from hastable
$h.values

# remove itens from hashtable
$h.remove("version")

# Clear hastable
$h.Clear()

