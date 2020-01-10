Feature: Cadastrar usuario
   Validar que  todxs usuarios consigam efetuar o cadastro em nosso site 


Scenario Outline: Cadastrar usuario > de 18 anos opcão email
   Given  que novo usuario seleciona opção cadastrar 
   And seleciona que deseja criar sua conta com email
   When informa os campos <nome> e sobrenome <email> <senha> <cpf> <celular> e <qualSuaIdade>
   And clico na opção  cadastrar e continuar 
   And informa o codigo de validação 
   And clica em coninuar
   Then e apresentada a tela inicial da area logada
   Examples:
 |nome              | email           | senha       |cpf         | celular   |qualSuaIdade|
 |"eduardo moises"  | "du@hotmail.com"| "Deus370750"  |37075094866 |11964366922|25          |

Scenario Outline:  Cadastrar usuario > de 18 anos opcão facebook
 Given que novo usuario seleciona opção cadastrar 
   And seleciona que deseja criar sua conta com facebook
   When informa os campos <nome> e sobrenome <email> <senha> <cpf> <celular> e <qualSuaIdade>
   And clico na opção  cadastrar e continuar 
   And informa o codigo de validação 
   And clica em coninuar
   Then e apresentada a tela inicial da area logada
   Examples:
 |nome              | email           | senha       |cpf         | celular   |qualSuaIdade|
 |"eduardo moises"  | "du@hotmail.com"| "Deus370750"  |37075094866 |11964366922|25         |

Scenario Outline: Cadastrar usuario < de 18 anos 
Given que novo usuario seleciona opção cadastrar 
  And seleciona que deseja criar sua conta com email
   When informa os campos <nome> e sobrenome <email> <senha> <cpf> <celular> e <qualSuaIdade>
   Then devera ser apresentado a seguinte <mensagem>
Examples:
|nome                | email            | senha         |cpf         | celular   |qualSuaIdade |mensagem|
|"sammuel ribeiro "  | "you@hotmail.com"| "Deus370750"  |37075094866 |11964366922|15          |"Sua idade deve ser maior que 18 anos" |