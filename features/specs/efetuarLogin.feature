Feature: Efetuar login 
   Validar que  todxs usuarios cadastrados consigam efetuar login em nosso site 

@login
Scenario Outline: efetuar login com dados validos com email 
 Given que usuario seleciona opção entrar
   And seleciona que deseja logar sua conta de email
  When  informa os campos <login> e <senha>
   And clico na opção  entrar
   Then e apresentado a  seguinte <mensagem> 
 Examples:
   | login             |  senha       |mensagem                 |
   | "duvergara@live.com"  | "Deus370750" | "Que bom ver você aqui."|




Scenario Outline:  efetuar login com dados invalidos com email
  Given que usuario seleciona opção entrar
   And seleciona que deseja logar sua conta com email
   When  informa os campos <login> e <senha>
   And clico na opção  entrar
   Then e apresentado a  seguinte <mensagem> 
 Examples:
  | login           |  senha     |mensagem           |
  | du@hotmail.com  | "Deus370750" | "Senha inválida"|




Scenario Outline: efetuar login com dados validos com facebook
  Given que usuario seleciona opção entrar
   And seleciona que deseja logar sua conta com facebook
   When informa os campos <login> e <senha>
   And clico na opção  entrar
   Then e apresentado a  seguinte <mensagem> 
  Examples:
  | login           |  senha     |mensagem                 |
   |me@hotmail.com"  |" Deus370750" | "Que bom ver você aqui"|

  


Scenario Outline: efetuar login com dados invalidos com facebook
  Given que usuario seleciona opção entrar
   And seleciona que deseja logar sua conta com facebook
   When informa os campos <login> e <senha>
   And clico na opção  entrar
   Then e apresentado a  seguinte <mensagem> 
 Examples:
  | login               |  senha     |mensagem                 |
   |" du@hotmail.com  |" Deus "   | "Senha inválida"|      

