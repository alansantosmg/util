---
tags:
  - tech/dev/golang
---

# Golang Cheatsheet

## Index

- [Go Tips](about:blank#go-tips)
    - [Index](about:blank#index)
    - [Workflow Go projects](about:blank#workflow-go-projects)
    - [Consulta documentação](about:blank#consulta-documenta%C3%A7%C3%A3o)
    - [Basic Go program](about:blank#basic-go-program)
    - [Separação de domínios](about:blank#separa%C3%A7%C3%A3o-de-dom%C3%ADnios)
    - [Instalação do GO](about:blank#instala%C3%A7%C3%A3o-do-go)
        - [Linux](about:blank#linux)
            - [Ajustar ambiente (GOPATH e GOROOT)](about:blank#ajustar-ambiente-gopath-e-goroot)
    - [GO Doc](about:blank#go-doc)
        - [Instalar Go Doc](about:blank#instalar-go-doc)
            - [Windows](about:blank#windows)
            - [Linux](about:blank#linux-1)
        - [Acessar o godoc](about:blank#acessar-o-godoc)
    - [Peculiaridades do GO](about:blank#peculiaridades-do-go)
    - [trabalhando com módulos](about:blank#trabalhando-com-m%C3%B3dulos)
        - [Estrutura de pastas para módulos](about:blank#estrutura-de-pastas-para-m%C3%B3dulos)
            - [Módulos externos](about:blank#m%C3%B3dulos-externos)
            - [Remover dependencias não usadas](about:blank#remover-dependencias-n%C3%A3o-usadas)
            - [Referenciar módulos](about:blank#referenciar-m%C3%B3dulos)
    - [Go command line](about:blank#go-command-line)
        - [GO fmt](about:blank#go-fmt)
    - [Tipos primitivos](about:blank#tipos-primitivos)
        - [Tipos númericos](about:blank#tipos-n%C3%BAmericos)
        - [Strings](about:blank#strings)
            - [Declarando strings](about:blank#declarando-strings)
            - [Verbos para formatação de strings](about:blank#verbos-para-formata%C3%A7%C3%A3o-de-strings)
            - [Quebrar palavras em caracteres](about:blank#quebrar-palavras-em-caracteres)
    - [Tipos compostos](about:blank#tipos-compostos)
        - [Arrays x Slices](about:blank#arrays-x-slices)
            - [Criando array (sempre tem tamanho fixo)](about:blank#criando-array-sempre-tem-tamanho-fixo)
            - [Criando um slice](about:blank#criando-um-slice)
            - [Trabalhando com Slices](about:blank#trabalhando-com-slices)
                - [Excluir item de slice](about:blank#excluir-item-de-slice)
                - [Adicionar um slice em outro slice](about:blank#adicionar-um-slice-em-outro-slice)
                - [Make e slices](about:blank#make-e-slices)
                - [Slice of slice](about:blank#slice-of-slice)
                - [Pegadinha do malandro com Slices](about:blank#pegadinha-do-malandro-com-slices)
    - [Maps](about:blank#maps)
    - [Loop for](about:blank#loop-for)
    - [for infinite loop](about:blank#for-infinite-loop)
    - [If clause](about:blank#if-clause)
    - [Switch case](about:blank#switch-case)
    - [structs](about:blank#structs)
        - [Criando structs](about:blank#criando-structs)
        - [Struct anonima](about:blank#struct-anonima)
    - [Funções](about:blank#fun%C3%A7%C3%B5es)
        - [Funções variádicas](about:blank#fun%C3%A7%C3%B5es-vari%C3%A1dicas)
        - [Funções - Clousure](about:blank#fun%C3%A7%C3%B5es---clousure)
        - [Função `init`](about:blank#fun%C3%A7%C3%A3o-init)
        - [Funções callback](about:blank#fun%C3%A7%C3%B5es-callback)
        - [Funções como tipos](about:blank#fun%C3%A7%C3%B5es-como-tipos)
        - [Interfaces](about:blank#interfaces)
    - [Ponteiros](about:blank#ponteiros)
    - [Defer (adiar)](about:blank#defer-adiar)
    - [Marshal Unmarshal Json](about:blank#marshal-unmarshal-json)
    - [Erros](about:blank#erros)
    - [Logs](about:blank#logs)
        - [Log Setflags](about:blank#log-setflags)
    - [Tests](about:blank#tests)
        - [Coverage](about:blank#coverage)
    - [Pacotes interessantes](about:blank#pacotes-interessantes)
        - `[math/big](about:blank#mathbig)`
        - `[math/rand](about:blank#mathrand)`
        - `[unicode](about:blank#unicode)`
        - `[time](about:blank#time)`
        - `[Error](about:blank#error)`
    - [Concorrência](about:blank#concorr%C3%AAncia)
        - [go routines](about:blank#go-routines)
        - [Mutex](about:blank#mutex)
        - [Detecção de condição de corrida](about:blank#detec%C3%A7%C3%A3o-de-condi%C3%A7%C3%A3o-de-corrida)
        - [Atomic](about:blank#atomic)
        - [Canais](about:blank#canais)
            - [Direcionamento de canais](about:blank#direcionamento-de-canais)
            - [Ranges e close channel](about:blank#ranges-e-close-channel)
            - [Select](about:blank#select)
            - [Comma Ok](about:blank#comma-ok)
            - [Convergência](about:blank#converg%C3%AAncia)
            - [Divergencia](about:blank#divergencia)
    - [Compilaçao cruzada](about:blank#compila%C3%A7ao-cruzada)

## Workflow Go Projects

1. Criar git branch p/ feature ou correção
2. Criar o teste
3. GoFmt; GoImports; GoLint
4. Rodar o teste e ver falhar
5. Escrever e compilar código sem erros
6. GoFmt; GoImports; GoLint
7. Rodar o teste e ver falhar - Observar erro
8. Escrever o mínimo de código para teste passar
9. GoFmt; GoImports; GoLint
10. Rodar o teste e obter Ok
11. Git add, Git Commit
12. Git merge feature to master
13. Ao final da feature ou correção - `git push origin master`

## Consulta Documentação

[Packages buit-in](https://golang.org/pkg)

[Go CLI Commands](https://golang.org/cmd)

## Basic Go Program

Hello World!

[Programa básico](https://play.golang.org/p/HmnNoBf0p1z)

## Separação De Domínios

Separar um programa em domínios facilita testá-lo e também em dividi-lo em partes menores e mais lógicas.

[Exemplo 1 - Separação de domínios - Hello World](https://play.golang.org/p/AEsLuSs7EL3)

## Instalação Do GO

### Linux

Go é instalado em `usr/local/bin`.

O workspace do usuário normalmente é em `/home/username/go`.

### Ajustar Ambiente (GOPATH E GOROOT)

Adicionar ao arquivo `.profile` do usuário:

```go
export GOPATH=$HOME/goexport PATH=$PATH:$GOPATH/bin
```

## GO Doc

### Instalar Go Doc

[Sobre Go doc](https://www.bswen.com/2020/07/How-to-install-godoc-tool-for-golang.html)

### Windows

`go get -v golang.org/x/tools/cmd/godoc`

### Linux

```go
cd / $GOPATH/src/golang.org/x/tools/cmd/godocgo build -o $GOPATH/bin/godoc
```

### Acessar O Godoc

`godoc -http=localhost:6060`

## Peculiaridades Do GO

- Go não compila se houver pacotes importados e variáveis não utilizados.
- Go não compila se faltar o pacote de alguma função
- Go não usa ; para separa sentenças. O compilador coloca o ; onde for necessário.
- Go não usa parênteses para declarar condições em if ou switch
- Go não usa break para sair de switchs
- Go pode retornar n valores de uma função
- Go pode aceitar n argumentos para uma função
- O método Println não precisa de espaço na separação de argumentos

## Trabalhando Com Módulos

### Estrutura De Pastas Para Módulos

- Para criar um módulo digite `go init mymodule`. Será criado arquivo go.mod
- A seguir crie arquivo `main.go` por padrão.
- O conteúdo do arquivo main.go deve iniciar com `package main`.
- Para criar sub-módulos, crie a pasta dos mesmos
- Dentro da pasta do sub-módulo, crie os arquivos do sub-módulo
- Os arquivos do sub-modulo tem que iniciar com `package nome-do-submódulo`.
- No arquivo main.go inclua no import `"nomeDoModulo/nomeDoSub-módulo"`.
- Compile com o comando go-build

### Módulos Externos

- Na pasta do módulo dar o comando go get endereço do pacote.
- Pacote sera registrado no go.mod
- ATENÇÃO: não ficar alterando manualmente o go.mod.

### Remover Dependencias Não Usadas

- `go mod tidy`

### Referenciar Módulos

- Incluir o caminho completo do módulo externo, incluindo domínio no import
- Ao chamar função do módulo, chamar sempre a referencia depois da última barra do import.

## Go Command line

### GO Fmt

Formata documentos recursivamente

`go fmt ./...`

## Tipos Primitivos

### Tipos Númericos

```
Type Range Storage
int8     –128 to 127
8-bit    (one byte)
uint8    0 to 255
int16    –32,768 to 32,767
16-bit   (two bytes)
uint16   0 to 65535
int32    –2,147,483,648 to 2,147,483,647
32-bit   (four bytes)
uint32   0 to 4,294,967,295
int64    –9,223,372,036,854,775,808 to
         9,223,372,036,854,775,807 64-bit (eight bytes)
uint64   0 to 18,446,744,073,709,551,615

```

**Atenção Atenção Atenção:**

Se você atribuir valor superior ao limite de um tipo, ocorrerá overflow.

Porém, se você adicionar um número além do limite de um valor já atribuído, aquele int irá zerar e começará a contar de novo!

### Strings

```go
// remove espaços antes de depois de uma cadeia de  caracteresstrings.Trim(v)// converte strings para minusculasstrings.ToLower(v)
```

### Declarando Strings

```go
// Mais facil declarar como Rawcomment1 := `In "Windows" the user directory is "C:\Users\"`// Declarando interpretado precisa de escape "\" p/ carecteres especiaiscomment2 := "In \"Windows\" the user directory is \"C:\\Users\\\""
```

### Verbos Para Formatação De Strings

```go
%15v %-15v  formata o texto para direita ou esquerda\n          line feed\"          Representa " dentro de uma string interpretada\t          tabulaçao%d          imprime valor como inteiro decimal%s          string%T          mostra do tipo da variável%v          imrime valor no formato padrão%2f         formata float com casas decimais%x          imprime valores em hexadecimal%b          imprime valores em binário%t          imprime variavel boleana
```

### Quebrar Palavras Em Caracteres

Strings são armazenadas como bytes no Go, usando encode UTF-8.

Isso significa que um caracter pode ser representado por mais de um byte.

Por isso, não é possível ler diretamente uma string em um FOR.

Ao tentar fazer isso, o resultado será bytes.

O número de bytes poderá ser maior que o número de caracteres.

A solução é converter de byte para strings.

Porém, nessa solução poderá haver perdas, pois a conversão fará perder os bytes extendidos de algum caracter, se houver.

A MELHOR solução é trabalhar com rune.

Converta o slice de strings em rune e trabalhe com ele

No final, converta de rune para string (byte).

Exemplo:

```go
username := "Sir_King_Über"runes := []rune(username)for i := 0; i< len(runes); i++{   fmt.Print(string(runes[i]), " ")}
```

## Tipos Compostos

### Arrays X Slices

- Uma vez definido o tamanho de um Array não é possível mudá-lo
- Quando um array é passado como parâmetro de função, é passada uma cópia do array, logo qualquer mudança no array dentro da função é perdida.
- Passar um array como parâmetro para uma função pode ser lento, justamente porque go faz gera uma cópia do array
- Slices são passados em funções como referencias. Logo se o slice for alterado dentro de uma função as alterações não são perdidas ao término da função.
- Por não precisar tirar cópia de Slice, sua passagem como parametro de função não deixa o programa mais lento.

### Criando Array (sempre Tem Tamanho fixo)

`myarray := [4]int{0,1,2,3}`

### Criando Um Slice

- Slice c/ elementos mas sem tamanho fixo

`aSliceliteral := []int{1,2,3,4}`

- Slice s/ elementos mas de tamanho fixo
    
    `aIntegerSlice := make([]int, 20)`
    
- Slice tem tamanho e capacidade. Se chegar ao tamanho maximo go Dobra a capacidade. Isso é ruim se o Slice for grande.
- Para realizar cópia entre arrays e Slices é necessário converter array para slice com a notação [:]
- Ao copiar um array para um slice o slice será reduzido ou aumentado para o tamanho do array e e seus elementos serão preservados.

### Trabalhando Com Slices

É possível adicionar multiplos itens em um slice usando append.

No exemplo abaixo são adicionados dados de um slice dentro de outro slice usando append. Verifique a notação de 3 pontos.

```go
locales :=  []string{"locale1", "locale2"}var extraLocals []stringlocales = append(locales, extraLocals...)
```

### Excluir Item De Slice

```go
    sabores := []string{"peperonni", "mussarela", "abacaxi", "marguerita", "quatroqueijos"}    // inclui indice zero até 1.    // 2 fica de fora    fatia := sabores[0:2]    fmt.Println(fatia)    // inclui indice 3 até o final    fatia2 := sabores[3:]    fmt.Println(fatia2)    // exclui item de um slice    // 0 a 1 e 3 até o final.    // item 2 é excluido do slice    fatia3 := append(sabores[0:2], sabores[3:]...)       fmt.Println(fatia3)}
```

### Adicionar Um Slice Em Outro Slice

```go
umaslice := []int{1,2,3,4}outraslice := []int{9,10,11,12}// adiciona multiplos itens do mesmo tipo na sliceumaslice = append(umaslice, 5,6,7,8)// não funciona, pois o segundo parametro// deve ser o tipo do conteudo da umaslice (no caso são int)// o que foi fornecido foi um  tipo "outraslice de int"umaslice = append(umaslice, outraslice)// o correto é adicionar o CONTEUDO de outraslice (que tb é int)// para isso usase o unfurl ou seja, os três pontinhosumaslice = append(umaslice, outraslice...)// os três pontinhos significa = conteúdo da slice.
```

### Make E Slices

`make([]T, len, cap)`

len = tamanho

cap = capacidade

`slice := make([]int, 5, 10)`

```
Se eu crio um slice com tamanho 5 e capacidade 10, eu posso ir adicionando elementos com append.
Ao adicionar elementos com append, após exceder o len inicial, eu irei aumentando o len.
Se o len passar a capacidade, Go irá jogar fora o slice e criará um novo len atual mas dobro da capacidade.

```

### Slice of Slice

```go
bidimensional := [][]int{        {0, 1, 2, 3},        {4, 5, 6},    }    fmt.Println(bidimensional[1][0])  \\ result 4
```

### Pegadinha Do Malandro Com Slices

[Exemplo 1 - Pegadinha Slice](https://play.golang.org/p/Xt4OiGrLLKg)

## Maps

[Exemplo 1 - trabalhando com maps](https://play.golang.org/p/5qmIXSCN5Ov)

## Loop for

```go
for i := 0; i <= 9; i++ {}
```

## For Infinite Loop

```go
// isso é um loop infinito com um break em algum lugarfor {   break}
```

`Use continue para quebrar a interação do loop`

## If Clause

```go
//não há parenteses no teste de condição.if a == b {} else if {} else {}
```

## Switch case

```go
// não parentesis na strutura do switchswitch n {   case 1:      a = b   case 2:      b = c   falltrought   default:      c = d}
```

## Structs

### Criando Structs

[Exemplo 1 - Criando structs](https://play.golang.org/p/H8BG87NNC0e)

### Struct Anonima

Structs anomima com mapa e Slice embutidos:

[Exemplo 1 - Struct Anonima](https://play.golang.org/p/jlEJYUQnZYG)

## Funções

### Funções Variádicas

Uma função variádica pode receber n parametros.

O parâmetro varidádico tem que ser o último.m

A função converte os valores recebidos em um slice.

Para mandar um slice para uma função com parametro variadico int

é preciso usar notação de 3 pontos.

Assim o slice é unpacked para int.

Vide exemplo abaixo:

[Função variadia - exemplo1](https://play.golang.org/p/xYG5aWNyLbN)

[Função varidica - exemplo2](https://play.golang.org/p/lYQyIUp975j)

### Funções - Clousure

Criamos um cloure ao criar uma funcao anonima dentro de outra função e chamar essa funcao anonima como retorno da outra função.

Isso permite à função anonima, usar parametros que são externos a ela. Exemplos:

[Exemplo 1 - Clousure](https://play.golang.org/p/nvAUskka9GX)

[Exemplo 2 - Clousure](https://play.golang.org/p/kFBQe0MjM1X)

### Função `init`

Função que roda antes das outras. Serve para fazer setup antes da aplicação rodar.

`func init(){}`

### Funções Callback

Função callback é quando você usa uma função como parâmetro de outra função.

[Exemplo 1 - CAllback Function](https://play.golang.org/p/PXI8T0o6lxv)

[Exemplo 2 - CAllback Funcion](https://play.golang.org/p/7nVW7vcN0fs)

### Funções Como Tipos

Em Go, uma função é um tipo, ou seja podemos criar tipos que são funções para poder reusá-los dentro dos programas.

### Interfaces

A melhor forma de se estudar interfaces é através dos exemplos comentados.

[Exemplo 1 - Interfaces](https://play.golang.org/p/4sY2v050sMK)

[Exemplo 2 - Interfaces](https://play.golang.org/p/8QzzD7Veoic)

## Ponteiros

Exemplo com explicação:

[Exemplo 1 - Ponteiros](https://play.golang.org/p/tnYbNGp6YuF)

[Exemplo 2 - Ponteiros](https://play.golang.org/p/dBgIOCpU7DH)

[Exemplo 3 - Ponteiros](https://play.golang.org/p/nBFDufLNkPA)

[Exemplo 4 - Ponteiros - Modificando um struct](https://play.golang.org/p/V8Cfk7mP1Wd)

## Defer (adiar)

Defer adia a execução de uma instrução no programa.

Se tiver mais de um, a primeira instrução com DEFER entrar na fila é o última a ser executada. O ponto de execução é a função na qual o DEFER foi criado, ou seja, ele executa a instrução antes da função encerrar (que pode ser antes do retorno).

[Exemplo - DEFER](https://play.golang.org/p/2wXTPjwYt4V)

## Marshal Unmarshal Json

[Exemplo 1 - Marshal and Unmarshal JSon](https://play.golang.org/p/R5N7Sfp-XJl)

[Exemplo 2 - Marshal JSon](https://play.golang.org/p/cakcrC_ygYQ)]

[Exemplo 3 - Unmarshal Json](https://play.golang.org/p/IIzg0SMDq9H)

## Erros

Existem 3 tipos de erros em programação

- Erros de sintaxe
- Erros de compilação ou interpretação
- Erros de semântica

Go não trabalha com tratatamento de exceções `exception handling`.

O tratamento de exceções é uma forma implícita de tratar erros em outras linguagens de programação.

Em go os erros são tratados seguindo paradigma diferente: forma explícita.

O que é um erro em Go? Em go um erro é um valor.

```go
val, err:= someFunc() errif err !=nil{   return err}return nil
```

A diferença entre um error e panic em go reside no fato de que o erro não causará problemas que impactam na integridade do programa.

Uma função não irá dar crash se você não tratar o erro.

Ja no panic se o erro não for tratado o programa dará crash.

## Logs

Ao fazer uma impressão usando pacote log, serão mostrados dados adicionais como

data e hora da execução do comando.

### Log Setflags

Ao setar flags para log, sua operação é modificada, podendo dar mais detalhes

`log.SetFlags(log.Ldate | log.Lmicroseconds | log.Llongfile)`

Pode ser interessante colocar as flags numa função init.

`Log.Fatalln` corresponde a um `fmt.Println`, mas é seguido de um os.Exit(1) onde o programa termina com erro e imprime o log.

A diferença entre `panic` e `fatal` é que a primeira pode ser recuperável, através do uso de `defer`

## Tests

Rodar comando go test recursivo para pastas:

`go test ./...`

Verbose tests - para mostrar todos os testes de todas funções

`go test -v ./...`

Para rodar testes em paralelo colocar debaixo da assinatura das funções de teste:

`t.parallel()`

### Coverage

Verifica cobertura do testes para todos os casos da funçao mas não especifica quais funcoes não estao totalmente cobertas

`go test --cover`

Gerar relatorio de cobertura

`go test --coverprofile cobertura.txt`

Verificar cobertura de testes de todas as funções no relatorio de cobertura.

Depende do relatório de cobertura gerado com go test.

`go tool cover --func=cobertura.txt`

Verificar linhas das funções que não estão cobertas no relatorio de cobertura.

Depende do relatório de cobertura gerado com go test.

`go tool cover --html=cobertura.txt`

## Pacotes Interessantes

### `math/big`

Usado para criar números maiores que float64.

Exemplo de uso:

```go
//criando big numberbigA := big.NewInt(math.MaxInt64)// adicionando ao big numberbigA.Add(bigA, big.NewInt(1))
```

### `math/rand`

Usado para gerar numeros aleatórios

Exemplo:

```go
// gera numero aleatorio entre 1  e 10int a := rand.Intn(10)+1// semeando um numero aleatoriorand.Seed(time.Now().UnixNano())
```

### `unicode`

Util para checar caracteres de uma string

Exemplo de uso:

```go
// funcao que checa se texto tem minusculasfunc checaTexto(meuTexto string) bool{   meuTextoR := []rune(meuTexto)   hasLower = false   for _, v := meuTextoR{      if unicode.IsLower(v) {      hasLower = true      }   }   return hasLower}
```

### `time`

Manipulação de tempo.

exemplos:

```go
time.Now()time.Monday//criando variavel do tipo timestartUpTime time.Time = time.Now()//criadno variavel do tipo time shorthandstartUpTime := time.Now()
```

### `Error`

```go
errors.New("input can't be a negative number")
```

## Concorrência

### Go Routines

Go routines são uma forma de executar funções de forma concorrente em Go.

Conceitos:

Criar variável do tipo waitGroup do pacote sync.

Colocar essa variável dentro do escopo que pode ser lido pelas funções que terão Go Routines.

criar um waitGroup.Add() e dentro do parentesis colocar o numero de funções controladas pelo Go.

Ao final de cada função colocar um waitGroup.Done().

Se for na função a anomima o done vem dentro da função.

`runtime.NumCPU()` permite ver quantos processadores a maquina possui

`runtime.NumGoroutine()` permite ver quantas go routines estão em execução

[Exemplo 1 - Go Routines - funções](https://play.golang.org/p/R8W9X8-rbjK)

[Exemplo 2 - Go Routines - funções anônimas](https://play.golang.org/p/ALid1L4OYJK)

[exemplo 3 - Go Routines 18 func](https://play.golang.org/p/u-P9jfRv1VO)

**Mensagem de erro**

`fatal error: all goroutines are asleep - deadlock!`

Pode ocorrer quando o numero de go routines é maior que o contador da variavel waitgroup

### Mutex

Mutex é uma forma de travar parte do código para impedir que determinadas variaveis sejam acessadas por mais de uma go routine ao mesmo tempo. Ou seja, ao travar a variavel uma go routine de cada vez vai acessar a variavel dentro de um determinado processo e impedir que qualquer outra rotina acesse essa memoria até acabar o processo iniciado.

Como funciona:

Criar a variavel mutex:

`var mu sync.Mutex`

Essa variável vai gerar 2 métodos: lock e unlock.

No início do código que quero que não tenha espaço de memória invadido coloco o lock, e o final coloco o unlock.

```go
var mu sync.Mutex()mu.Lock()meu código...mu.Unlock()
```

[Exemplo 1 - Mutex](https://play.golang.org/p/NoQTsKWylsj)

### Detecção De Condição De Corrida

Rodar o programa com o parametro -race:

`go run -race main.go`

Se houver condição de corrida, será exibida mensagem. Se não houver, o programa rodará normalmente.

### Atomic

Atomic funciona de forma diferente de Mutex. O programador encapsula a variavel que quer incrementar com atomic, adicionando o incremento ao endereço da variável.

Exemplo (não roda no go playground):

```go
package mainimport (    "fmt"    "log"    "runtime"    "sync"    "sync/atomic")const info = `Application %s starting.The binary was build by GO: %s`func main() {    log.Printf(info, "APP Name example", runtime.Version())    var contador int64 = 0 // com atomic tem que especifcar o tipo de int    totalGoroutines := 1000    var wg sync.WaitGroup    wg.Add(totalGoroutines)    for i := 0; i < totalGoroutines; i++ {        go func() {            atomic.AddInt64(&contador, 1) // escolher metodo compativel            runtime.Gosched()            fmt.Println("contador\t", atomic.LoadInt64(&contador))            wg.Done()        }()        fmt.Println("contador\t", runtime.NumGoroutine())    }    wg.Wait()    fmt.Println(contador)}
```

### Canais

Um canal é uma váriavel que recebe uma informação em algum ponto do programa e entrega essa informação em outro lugar. É mais usado do que waitgroups, mutex ou atomic.

Canais precisam de go routines para rodar. Isso acontece porque quando se coloca informação em um canal, o programa bloqueia a continuidade da execução até a informação ser entregue.

Canais devem ser declarados com make:

`canal := make (chan int)`

Você pode criar a variavel do canal fora da goroutine, porém a atribuição de valor do canal tem que ser feita dentro da goroutine.

Tirar o valor de um canal pode ser feito fora de uma goroutine.

[Exemplo 1 - Canal](https://play.golang.org/p/SkgujlhnCEX)

### Direcionamento De Canais

- Canais podem ser bidirecionais ou unidirecionais.
- Canais podem conter buffers.
- Na prática buffers nunca são usados.
- Um canal bidirecional pode ser convertido unidirecional.
- Um canal unidirecional não pode ser convertido em bidirecional.

[Exemplo 1 - Direcionamento de canais](https://play.golang.org/p/Aa-SZZr4Gmb)

### Ranges E close Channel

Ao iterar em canal através de range é necessário fechar o canal

quando não houver mais loops para iterar, senão dá deadlock, pois o receptor fica esperando receber mais coisas. Ele não tem como saber que não há mais dados para enviar. vide exemplo

[Exemplo 1 - Range e close](https://play.golang.org/p/FEIbfVvMfmG)

### Select

### Comma Ok

A notação comma ok pode ser utilizada para verificar se uma determinada informação foi enviada pelo canal. É util para verificar por exemplo se o valor zero de um canal é zero porque foi enviado zero através dele, ou se é zero justamente porque não foi enviada informação.

[Exemplo 1 - Comma Ok](https://play.golang.org/p/BvbdbuY9vn9)

### Convergência

Convergência é quando pegamos informações de dois canais e canalizamos o fluxo para 1 canal.

[Exemplo 1 - Convergência](https://play.golang.org/p/8Uk_L4esAqq)

### Divergencia

Diverg~encia é quando pegamos informações de 1 canal e distribuimos para outro canal. Exemplo comentado abaixo

[Exemplo 1 - Divergência](https://play.golang.org/p/TJR3KzbO8hL)

## Compilaçao Cruzada

`GOOS=windows GOARCH=amd64 go build main.go`

`GOOS=darwin GOARCH=amd64 go build main.go`

`GOOS=linux GOARCH=amd64 go build main.go`