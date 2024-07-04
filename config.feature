#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto: configuração de produtos
Dado que eu acesse a página de configuração EBAC-SHOP

Cenário: Escolher cor e tamanho do produto
Quando eu escolher a cor de produto "preto"
E tamanho "G"
Então deve exibir uma mensagem de "incluso no carrinho"

Cenário: Atingir limite máximo de quantidade
Quando chegar a quantidade máxima "dez"
E tamanho "G"
Então deve exibir uma mensagem de "limite máximo atingido"

Cenário: Limpar as configurações do produto
Quando clicar no botão "limpar"
E voltar ao estado original "sem inclusões no carrinho"
Então deve exibir uma mensagem de "sem estoque no carrinho"


