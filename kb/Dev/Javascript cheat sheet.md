---
tags: tech/dev/javascript
---

# Javascript Cheatsheet

### Reload Console

```
history.go();             // reload page from dev-tools window.location.reload(true);             // reload page from dev-toolslocation.reload();        // reload page from dev-tools
```

### Notação De Parenteses

Encontrar ultimo caracter de string

```
var firsName = 'alan';var ultimaLetra = firsName[firsName.length -1];
```

### Concactenando Variaveis Como Literais Em Strings

```
let temp = 20.5;let temperatura = 'A temperatura atual é ' + $[temp] + '\u00BC';console.log(temperatura);
```

### String Interpolation

```
mVar = "alan é o maior.";console.log(`Sim, ${mVar}`);
```

### Atribuição Composta

```
var myVar = 1;myVar = myVar + 5;MyVar += 5;MyVar /= 5;Myvar -= 5;
```

### Incremento

```
var Myvar = Myvar + 1;Myvar ++;
```

## Arrays

### Arrays Unidimensional

```
var myArray = [1,2,'jose',null];var myArrayData = myArray[0]; // result = 1
```

### Arrays Multidimensionais

```
var MyArray2 = [[1,2], ['a','b'], 3, 'jose', null];var myArrayData = myArray[1][0];             // result = a
```

### Add Item to the End of Array

```
var Myarray = [1,2];Myarray.push ([4,5]);                       // result [1,2,[4,5])
```

### Add Item to the Beginning of Array

```
var Myarray = [1,2];Myarray.unshift(3);                         // result (3,1,2)
```

### Removes Last Array Element and return Element

```
var MyArray = [1,2,3];var fora = MyArray.pop();console.log(fora);                          // [3]console.log(MyArray);                       // [1,2]
```

### Remove First Item in Array

```
var MyArray = [1,2,3]removeFirst = myArray.shift(); // [2,3]
```

## Functions

```
function myFunction(){  console.log('Hello World'); };myFunction();                             // Chamada da função
```

### Function with Args Function

```
function myFunction2(a,b){  console.log(a+b);}myFunction();                             // Chamada da função
```

### Function with Args and return

```
function multiplicaDobro(a){  return a * 2; }var resultado = multiplicaDobro(3);console.log(resultado)                    // 6
```

### Example Function Queue with Array

```
arr = [1,2,3,4];function filaAnda(arr,item){  arr.push(item);  return item = arr.shift(); }console.log(arr);
```

### If Decision True or False Simple Test Function

```
function testeVerdade(minhaResposta){  if (minhaResposta) {    return "Resposta verdadeira"; }  return 'resposta falsa';}
```

If decision conditional strict operator convert different types before the comparison

- Example: `1 == '1'` returns true

Strict equality operator does not perform typer conversion

- Example: `1 === '1'` returns false

> IF POSSIBLE ALWAYS USE STRICT EQUALITY OPERATOR

```
function testVal(val){  if (val === 10){    return 'val is true';  } return 'val is false';}myTest = val(11); // myTest = false
```

## Logical Operators

```
== equal
=== strict equal
!= not equal
!== strict not equal
> < >= <=
&& // and || or

```

### Decision with Logic

```
function test(num){  if (num <=50 && num >=25){    return true;  }}test(30); // returns true
```

## Loops

### While

```
let count =0;while(count < 10)  console.log(count);  count++; // counts until 9 (10x)
```

### Do While Executes Loop at Least One time

```
let count=0;do {  console.log(count);  count++;}while(count < 10);
```

### For Loop

```
for(let i=0; i < 10; i++){  console.log(i);}
```

```
for (let i = 0, j = 5; i < 5; i++, j--) {} // i increases and j decreases
```

### Nested for Loop

```
for(let i=0; i < 2; i++){  for(let k=0; k < 2; k++){    console.log(i + ' ' + k);  } console.log('\n');}                               // for each i ran 1 time, k runs 3 times
```

### For in Loop

Retorna as propriedades de um objeto obj.a obj.b …

**Don’t use for arrays**

```
const obj= {a:1, b:2, c:3, d:4, };for (let o in obj) {  console.log(obj[o]);         // returns properties of keys in obj  console.log(o);              // returns the keys }
```

### For out Loop

Especifico para coleções retorna os itens da coleção

**Use for arrays and strings**

```
let iterable = [10, 20, 30];  for (let value of iterable) {    console.log(value);}                               // returns 10, 20, 30 }
```

### Switch case

```
function myChoice(num){  let num = 0; switch(num){    case 1:      return 1;    case 2:      return 2;    default: // any other option      return 3; }}let returnChoice = myChoice;
```

### Sequential Switch case

```
function sequentialSizes(val) {  var answer = "";  switch(val){    case 1:    case 2:    case 3: asnwer = 'Low';      break;    case 4:    case 5:    case 6: answer = 'Mid';      break    case 7:    case 8:    case 9: answer = 'High';      break;  }sequentialSizes(1);
```

### Return Early Pattern - for Functions

```
function myTest(a,b){ return a === b; } // returns true or fase
```

## Objects

### An Object

```
alpha = { 'stellarObject': 'star',          'location': 'Andromeda',          'parseDistance': 2,          4: 'w',          'given Name': 'Polar Star' }alpha["given Name"] = "South Star";     //change a propertyalpha.location = 'M-78';                // change a propertyalpha.planets = 2;                      // add property//delete alpha.4;                         // delete a propertydelete alpha.parseDistance;             // delete a property
```

### Using Variable to Access Object Properties

```
family = { father: 'Alan', daughter: 'Alice', son: 'Henrique' }var memberType = 'father';var member = family[memberType];console.log(member)                     // returns Alan
```

### Using Object for Lookup instead Switch case or IF

```
function phoneticLookup(val) {  var result = "";  var lookup = { alpha: "Adams",                bravo: "Boston",                charlie: "Chicago",                delta: "Denver",                echo: "Easy",                foxtrot: "Frank" }  result = lookup[val];  return result;                      // returns Chicago}phoneticLookup('Charlie');
```

### Testing if Object for Property

```
var myObj = { gift: "pony", pet: "kitten", bed: "sleigh" };function checkObj(checkProp) {  if (myObj.hasOwnProperty(checkProp)) {    return myObj[checkProp];  } else {    return "Not Found";  }}checkObj("ponny"); // returns the object if true
```

### Adding Objects to an Array

### Using array.push Method

```
var myMusic = [ { "artist": "Billy Joel",                  "title":  "Piano Man",                  "release_year": 1973,                  "formats": [ "CD", "8T", "LP" ],                  "gold": true } ];myMusic.push( { "artist": "Madonna",                "title": "Secret",                "release_year": 1988,                "formats": [ "CD", "LP" ],                "gold": true })
```

### Access Nested Objects

```
var myStorage = { "car":                  { "inside":                    { "glove box": "maps",                      "passenger seat": "crumbs" },                    "outside": { "trunk": "jack" }                  }                }var gloveBoxContents = myStorage.car.inside["glove box"];
```

## ES6

### Make a Object Imutable with Object.freeze

```
const MATH_CONSTANTS = { PI: 3.14 };Object.freeze(MATH_CONSTANTS);MATH_CONSTANTS.PI = 3,2 // Mutation Not allowed.
```

### Default Function Parameters

```
const myName = (firstName = "alan") => console.log(firstName); myName(); // returns alanmyName('john'); // returns john
```

- Variavel local pode ter mesmo nome de variavel global.
- Variavel local tem precedencia sobre global.
- Se nome for igual variavel com let não pode ser declarada novamente.
- Variavel declarada com const é imutavel, exceto para objetos e arrays.
- No caso de objetos e arrays, o const impede reatribuição do identificador da variavel.
- Use const para tudo.
- Onde reatribuição, altere para let.
- identificador de variavel const é sempre maiuscula.

## Buit-in Methods

### Split, Reverse and Join Strings

```
str = "mystring";str.split("")  // breaks a string into an array without separatorstr.reverse()  // reverse the order of the array elements.str.join("")  //  join the array itens into a string\\ chaining:str.split("").reverse().join("");
```

### Slice

```
str = "mystring";str.slice(1,3)  // returns ys (começa no index 1 e retorna 2 posições)str.slice(-2) // returns ng  (2 posições contando do fim para inicio)
```