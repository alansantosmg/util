---
tags:
  - tech/dev/python
---
## Como Criar um Ambiente Virtual com o `venv`

O `venv` é uma biblioteca Python padrão, disponível nas versões 3.3 e posteriores. Para criar um ambiente virtual, siga os passos abaixo:

### 1. Abra um Terminal

Abra o terminal ou prompt de comando do seu sistema operacional.

### 2. Navegue até o Diretório do Projeto

Use o comando `cd` para navegar até o diretório raiz do seu projeto.  

```bash
cd /caminho/do/seu/projeto
```

### 3. Crie o Ambiente Virtual

Use o comando `python -m venv nome_do_ambiente` para criar um ambiente virtual com o nome desejado. Substitua `nome_do_ambiente` pelo nome que você escolher para o ambiente virtual.  

```bash
python -m venv meu_ambiente_virtual
```

### 4. Ative o Ambiente Virtual

Dependendo do seu sistema operacional, o comando para ativar o ambiente virtual varia:

**No Windows:**  

```Powershell
meu_ambiente_virtual\Scripts\activate
```

**No macOS e Linux:**  

```bash
source meu_ambiente_virtual/bin/activate
```

Você verá o nome do ambiente virtual atual no prompt do terminal, indicando que o ambiente foi ativado com sucesso.

## Como Desativar um Ambiente Virtual

Para desativar um ambiente virtual e retornar ao ambiente global do Python, basta digitar:  

```bash
deactivate
```

## Como Instalar Pacotes em um Ambiente Virtual

Com o ambiente virtual ativado, você pode instalar pacotes e bibliotecas específicos para o seu projeto sem afetar o ambiente global do Python. Use o comando `pip` para instalar pacotes:  

```bash
pip install nome_do_pacote
```

Por exemplo, para instalar a biblioteca `requests` em um ambiente virtual:  

```bash
pip install requests
```