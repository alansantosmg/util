---
tags:
  - tech/dev/python
---
# Python Cheat Sheet

# Python Cheat Sheet

## Sequência Construção App Python

Definir a classe

Criar construtor da classe __init__()

Criar atributos públicos

Criar atributos privados

Criar o atributo de self__classname_version .

Criar propriedades dos atributos privados c/ método de retorno.

Criar método check_version

Criar método de impressão da classe __STR__() >

## How to Clear Screen

```
print('\033[H\033[J') >

```

## Time Function

```
import time
# wait 30 seconds
time.sleep(30)

```

## Random

```
Import random
random.randint(1,6) >

```

## Virtual Environments

```
# Instalar o venv:

sudo apt-get install pip3
sudo apt-get install python3-venv
sudo apt-get install pylint3 # Ou sudo pip3 install pylint3
sudo apt-get install pytest-3 # ou sudo pip3 install pytest-3

# incluir as linhas no arquivo settings.json:

"workbench.colorTheme": "Abyss",
"python.venvPath": "/home/alan/pycode",
"python.formatting.provider": "black",
"python.linting.pylintPath": "${workspaceRoot}/bin/pylint3",
"python.unitTest.pyTestPath": "${workspaceRoot}/bin/pytest-3"

# criar o venv

python3 –m venv nomedomeuambiente
cd nomedomeuambiente
cd bin
ln –s /usr/bin/pylint3 pylint3
ln –s /usr/bin/pytest-3 pytest-3

[[opcionalmente]] ao invés de fazer atalhos, instalar as ferramentas.
# neste caso seria:

cd /meuambiente/bin
source activate
pip3 install pylint3
pip3 install pytest-3

https://code.visualstudio.com/docs/python/environments
https://fedoramagazine.org/vscode-python-howto/
https://stackoverflow.com/questions/45554864/permission-denied-when-activating-venv
https://pythonacademy.com.br/blog/python-e-virtualenv-como-programar-em-ambientes-virtuais

```

## Django Venvs

```
# Lista de atividades
1.Criar o venv
2. ativar o venv
3. pip install django

# Comandos de criação
cd git
mdkir django
django-admin --version
~/.venvs/venv-django/bin/django-admin startproject helloworld

# Testando ambiente
python3 manage.py runserver

```