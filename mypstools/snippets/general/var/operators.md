# Powershell operators

# Comparison operators

```Powershell
-is
-eq equal
-ne not equal
-ceq equal (case sensitive)
-lt less than
-le less or igual
-gt greater than
-ge greater or equal
-like
-clike  (case sensitive)
-notlike
-match
-notmatch
-cmatch (case sensitive)
-contains
-notcontains
-in
-NotIn
```

###  Examples

```powershell
"foo" -like "f*"

# Regular expressions
"abc-1234" -match "\d+
```


## Logical operators

-AND
-OR
-Test-Path

### Examples


```powershell

# Example 1
$i = 20
$name = "alan"
($i -ge 20) -AND (($name -eq "alan") -OR ($PSEdition -eq "core"))

# Example 2
Test-Path c:\windows\notepad.exe
# True

# Example 3
-Not (Test-Path c:\windows\notepad.exe)
# False

```
## Math operators 

```powershell

$a=5
$a+=5
# $a = 10
```
