Funcionalidade: Avaliar uma compra
     ENQUANTO cliente da loja online 
     POSSO avaliar um produto que adquiri
     PARA QUE os fornecedores saibam o que eu achei do produto

Cenário 1: Avaliar o produto comprado
    DADO QUE eu como cliente da loja online
    QUANDO estou na tela do produto 
    E estiver logado
    E clico em "Be the first to write your review!"
    ENTÃO o sistema abre uma modal para escrever a avaliação

Cenário 2: Escrever a avaliação
    DADO QUE eu como cliente da loja
    QUANDO estou na modal de escre uma avaliação
    E avalio o produto
    E clico em "Send"    
    ENTÃO o sistema deverá mostrar uma tela de confirmação