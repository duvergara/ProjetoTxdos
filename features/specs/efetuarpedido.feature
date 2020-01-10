Feature: efetuar pedido
   Validar que  todxs usuarios consigam efetuar o seu pedido e curtir a qualquer momento


Scenario Outline: Scenario Outline name: efetuar pedido usuario dentro da area de cobertura
   Given que  usuario deseja efetaur seu pedido
   And seleciona opçãp inserir endereço para pedir 
   When informa o campos<enderecoEnumero> e <complemento>
   And clico na opção continuar
   And seleciona opção ver produtos disponiveis 
   Then produtos disponiveis para aquela localização são exibidos
  
   Examples:
 |enderecoEnumero             |complemento|
 | "rua são tomé 86 vila olimpia"  | 34   |

@Pedidos
   Scenario Outline: Scenario Outline name efetuar pedido usuario fora de area de cobertura
 Given que  usuario deseja efetaur seu pedido
   And seleciona opçãp inserir endereço para pedir 
   When informa o campos<enderecoEnumero> e <complemento>
   And clico na opção continuar
   Then e apresentado a seguinte <mensagem>
  
   Examples:
 |enderecoEnumero|complemento  | mensagem|
 |"dias moreia"  |      34     |"Putz, está fora da nossa área.. "|
