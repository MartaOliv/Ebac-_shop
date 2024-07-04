#language: pt

Funcionalidade: checkout sistema
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra

Contexto:
Dado que eu faça checkout na página de login EBAC-SHOP

Cenário: Autenticação válida
Quando todos os campos contendo "*"
E foram preenchidos "*"
Então deve exibir uma mensagem de boas vindas "cadastro realizado com sucesso"

Cenário: login válido
Quando eu digitar o usuário "marta@ebac.com.br"
E a senha "senha@123"
Então deve exibir uma mensagem de boas vindas "Olá Marta"

Cenário: Usuário com senha inválida
Quando eu digitar o usuário "marta@ebac.com.br"
E a senha "127hfnfkf"
Então deve exibir uma mensagem de alerta: "usuário ou senha inválidos"

Cenário: Usuário inexistente
Quando eu digitar o usuário "xxxyyy@ebac.com.br"
E a senha "senha@123"
Então deveUsuário inexistente exibir uma mensagem de alerta: "usuário inexistente"

Cenário:  Usuário sem preenchimento
Quando eu digitar o usuário "  @ebac.com.br"
E a senha "127hfnfkf"
Então deve exibir uma mensagem de alerta: "usuário inválido"

Cenário:  senha sem preenchimento
Quando eu digitar o usuário "marta@ebac.com.br"
E a senha " "
Então deve exibir uma mensagem de alerta: "senha inválida"

