---
tags:
  - tech/devops/git
  - tech/dev/git
---

# Gitignore

## Criando Um Arquivo Gitignore

O gitignore é um arquivo que fica escondido dentro do seu repositório git.

Ele é usado para fazer o git ignorar determinados tipos de arquivo. 

Para criá-lo é possível usar o script shell abaixo:

```bash
touch gitignoreecho "*.log" >> gitignoreecho "*_pycache_" >> gitignoreecho "*.[oa]" >> gitignoreecho "*~" >> gitignoreecho "!lib.a" >> gitignoreecho "*.pyc" >> gitignoreecho ".vscode" >> gitignoreecho "*.vscode" >> gitignoreecho "settings.json" >> gitignoreechosleep 2clearecho "Arquivo gitignore criado em ./.git"echo "Não monitorando (ignorando): "sleep 2echo "---------------"cat gitignoreecho "---------------"sleep 10echo
```