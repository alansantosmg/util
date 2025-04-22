
# Git-tips

## Configuração Global

`git config --global user.name "nome" # seta usuario global`

`git config --global user.email "email" # seta email user global`

`git config --global core.editor vim # seta editor principal`

## Configuração Local (por projeto)

`git config --local user.name "nome" # seta usuario projeto`

`git cofnig --local user.email email # seta email usuario projeto`

## Criação De Repositórios

### Criação De Repositório Bare (source)

`git init --bare # cria repo remoto na pasta (server)`

**Permissão deve ver 777 -R na pasta**

### Criação De Repo Local

`git init # cria repo na pasta (local)`

## Conectando Repositório Local Ao Bare

`git remote add local /path repo server/ # Conecta reposerver p/ local client`

`git remote add origin /path repo server/ # Conecta reposerver p/ origin`

## Removendo Conexão Entre Repositório Local E Bare

`it remote rm origin # exclui remote do local # ex: se path estiver errado.`

## Listando Repositórios Bare Conectados no Repo Local

```bash
git remote           # lista repos remote
git remote -v        # lista repos remote c/ path

```

## Buscar Dados Do Repo Bare (master)

`git pull local master # busca dados do repo remoto master p/ repo no client chamdo local`

## Envar Dados Para Repo Bare (master)

Envia dados p/ remoto master. Se master não existir será criado. Usado p/ popular o remoto master no inicio do dev.

`git push local master`

## Clonar Repositório Bare Para Repo Local

Cria pasta do projeto e clona repo remoto master

`git clone /remote-path nome-do projeto`

## Exemplos De Uso

### Criação De Repo Vazio no Server

```bash
mkdir projetocd ./projetogit init --bare
```

### Criação De Repo no 1o Cliente E Popula Remote Master Com Arquivos

```bash
mkdir projetocd ./projetotouch file1-do-projeto.jstouch file2-do projeto.jsgit initgit statusgit add .git statusgit commit -m "inicio do projeto"git statusgit remote add origin /path-projeto-server/ ou urlgit push -u  origin mastergit log
```

### Clonando O Repo Do Server (cliente2)

```bash
git clone /path-projeto-server/ nome-do-projetocd nome-do-projetogit statusgit log
```

### Operacao Basica no Repo Do Client

```bash
vim arquivo1.txt (altera arquivo txt)git statusgit add arquivo1.txtgit statusgit commit -m "arquivo alterado"git statusgit log
```

## Desfazendo Alterações

```bash
git checkout --arquivo-alterado-a-adicionar    # tira da lista de alteradosgit checkout -- arquivo.txt # volta arquivo ao estado original desde o último commit.git HEAD --arquivo adicionado-para-commit      # tira da lista de adicionadosgit revert HASH                    # defaz commit
```

## BRANCHES - Criar p/ Trabalhar Em Equipe (funcionalidades)

```bash
git branch                    # lista branchs
git branch titulo                 # Cria branch titulo
git branch botao-adicionar            # Cria branch botao-adicionar
git branch lista                  # Cria branch lista
git checkou -b lista                  # Cria branch lista e vai p ele
git branch remove lista               # remove branch lista

```

### Rebase E Merge De Branchs

```bash
git rebase  ## refaz linha de commits depois do master
git merge   ## junta commits no master (e faz novo commit)

```

### Fluxo De Trabalho - Estrategica p/ Evitar Conflitos

```bash
git pull origin master      ## busca arquivos do master
git checkout -b feature     ## cria branch de trabalho
realiza alteraçoes          ## alteraçoes nos arquivos (com commits)
git pull origin master      ## busca arquivos do master (outros dev alteraram)
rebase master               ## inclui alteracoes do master no feature
git checkout master         ## muda pro branch master
git merge feature           ## merge entre master e feature
git log                     ## master = feature
git push origin master      ## envia alterações para master do remoto

```

> Nota:
> 
> 
> O arquivo .gitignore deve ficar fora do .git

## Stash - Area De Armazenamento Temporário

```bash
git stash           ## armazena modificacoes temporarias
git stash list          ## lista modificações temporarias
git stash apply 0       ## aplica a modificação zero
git stash drop          ## remove modificações do stash
git stash pop           ## aplica modificações, e faz merge
git diff commit1 commit2    ## mostra diferença entre commits
git tag -a v0.1.0 -m "msg"  ## adiciona uma tag com versão

```

## Rebase Para Commit Anteriores

```bash
git rebase -i  HEAD~3
git rebase -i selecionar commit anterior aos 3.

```

## Git Log

```bash
git log --oneline       ## hash7 / head/ description

```

$ git remote set-url origin [git@github.com](mailto:git@github.com):your user/name repository.git