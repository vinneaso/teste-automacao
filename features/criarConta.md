Funcionalidade: Criar uma conta para um cliente
     ENQUANTO possível cliente da loja online
     POSSO criar uma nova conta
     PARA QUE tenha acesso ao sistema de compras

Cenário 1: Criar conta
    DADO QUE como cliente da loja online
    QUANDO acessar o sistema na área de login
    E digito um e-mail
    E clico em "Create an account" 
    ENTÃO o sistema deverá direcionar para a tela de cadastro

Cenário 2: Confirmar cadastro
    DADO QUE como cliente da loja online
    QUANDO estou na tela de cadastro
    E preencho os dados necessários para o cadastro
    E clico em "Register"
    ENTÃO o sistema deverá direcionar para tela de "My Account"