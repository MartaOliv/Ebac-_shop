#language: pt

Funcionalidade: login sistema
Como cliente da EBAC-SHOP
Quero fazer o login (auteticação) na plataforma
Para visualizar meus pedidos

Contexto: cadastro de login
Dado que eu acesse a página de login EBAC-SHOP

Cenário: cadastro válido
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
Então deve exibir uma mensagem de alerta: "usuário inexistente"

Esquema do Cenário: Autenticar multíplos usuários
Quando eu digitar o <usuario> 
Então deve exibir a <mensagem> de sucesso

Exemplos: 
|usuario|senha| mensagem|
|"josé@ebac.com.br"| "12345@123"! "Olá José"|
|"marta@ebac.com.br"| "teste@123"! "Olá Marta"|
|"alice@ebac.com.br"| "mudarsenha@123"! "Olá Alice"|