
# Foreach example

1..10 | foreach-object {
    get-random -minimum 1 -maximum 10
} | 
foreach-object {
    
 $_ * 2
} | 
Measure-Object -sum -Average -Maximum -Minimum | 
select-object -property * -ExcludeProperty Property,Count
