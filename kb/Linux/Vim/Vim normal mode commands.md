---
tags:
  - tech/linux/vim
  - tech/linux/commands/vim
---
:## Comandos De Ações no Modo Normal

| Comando     | Função                                  |
| ----------- | --------------------------------------- |
| .           | repete ultimo comando                   |
| viw         | seleciona palavra inteira (cursor nela) |
| vis         | seleciona sentença (cursor nela)        |
| vip         | seleciona paragrafo (cursor nela)       |
| vat         | seleciona ao redor da tag (tag inteira) |
| va{         | seleciona dentro os {}                  |
| vitc        | Altera texto dentro da tag              |
| vi{c        | Altera texto dentro das aspas           |
| vi(c        | Altera texto dentro do parenteses       |
| d           | deletar ou copiar caracter              |
| dd          | recortar ou apagar linha                |
| y           | copiar                                  |
| yy          | copiar linha                            |
| p           | colar abaixo                            |
| P           | colar acima                             |
| .w !xsel -b | colar linha no clipBoard                |
| w !xsel -b  | colar seleção visual no clipBoard       |
| S           | cola sobrescrevendo a linha toda        |
| u           | desfazer (undo)                         |
| x           | apagar uma letra                        |
| o           | insert na linha abaixo (nova linha)     |
| O           | insert na linha acima (nova linha)      |
| i           | inserir                                 |
| I           | inserir no inicio da linha atua         |
| a           | inserir apos caracter atual             |
| A           | inserir no final da lina atual          |
| di          | deletar dentro                          |
| yi          | copiar dentro                           |
| v           | visual / seleção                        |
| /           | buscar (find) n proxima ocorrencia      |
| /;j         | tirar highlight da busca anterior       |
| //          | repete ultima busca                     |
| %           | busca fechamento de parenteses ou chave |
| :s          | substituir (replace)                    |
| :50         | vai para linha 50                       |
| 50gg        | vai para linha 50                       |
| J           | junta linhas (remove breakline)         |
| ZZ          | sai do arquivo e salva                  |
| ~           | alterna maisculas e minusculas          |
| :history    | lista comandos anteriores (só lista)    |
| q:          | escolher e alterar comando anterior     |
| gx          | abre url corrente no browser            |
