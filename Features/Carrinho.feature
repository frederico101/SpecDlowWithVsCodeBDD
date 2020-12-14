Feature:  Carrinho de compras
         Como um cliente
         Eu quero colocar um produto no carrinho
         Para eu compra-lo posteriormente
 
         Scenario: Colocar um item disponivel no carrinho
              Given O produto é exibido na vitrine
              And e possui estoque acima do informado
              And e o usuário seleciona uma quantidade igual ou inferior a quantidade de estoque
              When o usuário clica em adicionar o item no carrinho
             Then o usuário é redirecionado ao resumo do carrinho
             And visualiza todos os items do carrinho


          Scenario: Colocar um item indisponivel no carrinho
          Given que o produto é exibdo na vitrine 
          And  possui informação do produto fora do estoque
          When o usuário clica em adicionar o item no carrinho
          Then o usuário recebe uma mensagem de item fora de estoque
          And um botão "desejo ser avisado quando disponivel" é exibido ao usuário