Funcionalidade: Realizar uma compra na loja online
     ENQUANTO cliente da loja online
     POSSO escolher produtos na loja online
     PARA QUE possa comprá-los

Cenário 1: Escolher um produto
    DADO QUE como cliente da loja online
    QUANDO logado no sistema
    E escolo um produto na loja que desejo comprar
    E clico no produto escolhido
    ENTÃO o sistema deverá direcionar para tela com todas as informações do produto

Cenário 2:  Colocar um produto no carrinho
    DADO QUE como cliente da loja online
    QUANDO escolho um produto
    E clico em "Add to cart"
    ENTÃO o sistema adiciona o produto no carrinho
    E abre uma modal de confirmação

Cenário 3: Finalizar compra
    DADO QUE como cliente da loja online
    QUANDO estou com um produto no carrinhoo
    E clico em "Proceed to checkout"
    ENTÃO o sistema direciona para a tela de endereços se estiver logado

Cenário 4: Confirmar endeereço
    DADO QUE como cliente da loja
    QUANDO estou na tela de endereços
    E confirmo que todos os dados estão corretos
    E clico em "Proceed to checkout"
    ENTÃO o sistema direciona para tela de envio

Cenário 5: Confirmar envio
    DADO QUE como cliente da loja
    QUANDO estou na tela de envio
    E concordo com o termo de serviço 
    E clico em "Proceed to checkout"
    ENTÃO o sistema direciona para a tela de pagamento

Cenário 6: Confirmar pagamento
    DADO QUE como cliente da loja online
    QUANDO estou na tela de pagamento
    E escolho o pagamento por cheque
    ENTÃO o sistema direciona para tela de resumo do pedido

Cenário 7: Confirmar a compra
    DADO QUE como cliente da loja
    QUANDO estou na tela de resumo do pedido
    E clico no botão "I confirm my order"
    ENTÃO o sitema direciona para a tela de confirmação do pedido

Cenário 8: Histórico de compra
    DADO QUE como cliente da loja 
    QUANDO estou na tela de confirmação do pedido 
    E clico em "Back to orders"
    ENTÃO o sistema direciona para tela de histórico de compras