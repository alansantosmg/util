---
tags:
  - tech/linux/solutions
---

Quando usuário opta por utilizar tema escuro no LInux, o Firefox acaba renderizando caixas de texto dos formulários de forma incorreta (fundo escuro com fonte preta), dificultando a digitação de texto e leitura.

Para corrigir:

1. Abra o Firefox e digite `about:config` na barra de navegação.
2. Clique com o botão direito do mouse abaixo da barra search e crie um nova entrada de registro do tipo `string`.
3. Ao criar a entrada preencha o parâmetro name com: `widget.content.gtk-theme-override`.
4. Preencha o parâmetro value com: `Adwaita:light`.
5. Reinicie o Firefox.