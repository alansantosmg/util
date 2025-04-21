
# Gitignore

O gitignore é um arquivo que fica escondido dentro do seu repositório git.

Ele é usado para fazer o git ignorar determinados tipos de arquivo.

## Criando Um Arquivo Gitignore

Para criá-lo é possível usar o script shell abaixo:

```bash
#!/bin/bash
touch ./.git/gitignore
gitignore echo "*.log" 
gitignore echo "* pycache "
gitignore echo "*.[oa]" 
gitignore echo "*~" 
gitignore echo "!lib.a" 
gitignore echo "*.pyc" 
gitignore echo ".vscode" 
gitignore echo "*.vscode" 
gitignore echo "settings.json" 
sleep 2
clear
echo "Arquivo gitignore criado em ./.git "
echo "Não monitorando (ignorando): "
sleep 2 
echo "---------------"
cat ./.git/gitignore 
echo "---------------"
sleep 10 
echo
```