            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página de produto da EBAC-SHOP

            Cenário: Seleção de cor, tamanho e quantidade
            Quando eu clicar na cor "amarelo"
            E quando eu clicar no tamanho "M"
            E quando eu clicar na quantidade "1"
            Então deve exibir a mensagem "Inserir no carrinho"

            Cenário: Selecionar até 10 produtos por venda
            Quando eu selecionar 10 produtos
            Então deve exibir uma mensagem de "Ir para o checkout"

            Cenário: Selecionar até 10 produtos por venda
            Quando eu selecionar 4 produtos
            Então deve exibir uma mensagem com as opções "Ir para o checkout" ou "Continuar comprando"

            Cenário: Selecionar até 10 produtos por venda
            Quando eu selecionar 11 produtos
            Então deve exibir a mensagem de alerta: "Você excedeu o limite de 10 produtos por compra"

            Cenário: Limpar o carrinho
            Dado que eu acesse a página de Carrinho
            Quando eu clicar no botão Limpar
            Então deve exibir o Carrinho vazio


            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação da EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu inserir o usuário "joao.silva@email.com"
            E a senha "senha@1234"
            Então eu sou encaminhado para o checkout

            Cenário: Usário inválido
            Quando eu inserir o usuário "axzc.silva@email.com"
            E a senha "senha@1234"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Cenário: Senha inválida
            Quando eu inseguir o usuário "joao.silva@email.com"
            E a senha "xyz1111"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"



            Funcionalidade: Tela de cadastro Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a tela de cadastro do Checkout

            Cenário: Cadastro completo
            Quando eu inserir todos os dados obrigatórios do formulário de cadastro
            Então deve exibir a mensagem "Finalizar compra"

            Cenário: Cadastro de email inválido
            Quando eu inserir email em formato inválido
            Então deve exibir a mensagem de erro: "email inválido"

            Cenário: Cadastro incompleto
            Quando eu deixar de preencher um campo de dados obrigatórios do formulário de cadastro
            Então deve exibir a mensagem de alerta: "Completar dados obrigatórios*"

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de

            Exemplos:
            | usuario            | senha       | mensagem           |
            | "joao@email.com"   | "senha1234" | "Finalizar compra" |
            | "maria@email.com"  | "senha2345" | "Finalizar compra" |
            | "carlos@email.com" | "senha3456" | "Finalizar compra" |
            | "julia@email.com"  | "senha4567" | "Finalizar compra" |
            | "bob@email.com"    | "senha5678" | "Finalizar compra" |
