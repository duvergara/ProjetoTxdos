page =  CadastrarUsuario.new

When("que novo usuario seleciona opção cadastrar") do
page.maiorde18.click
page.selecionarEntrar.click
page.selecioneCadastrar.click
end
  
  When("seleciona que deseja criar sua conta com email") do
  page.selecionarEmail.click
  end
  
  When("informa os campos {string} e sobrenome {string} {string} {int} {int} e {int}") do |nome, email, senha, cpf, celular, qualSuaIdade|
    page.informarNome.send_keys(nome)
   page.informarEmail.send_keys(email)
   page.informarSenha.send_keys(senha)
   page.informarCpf.send_keys(cpf)
   page.informarCelular.send_keys(celular)
   page.informarIdade.send_keys(qualSuaIdade)
   
  end

  When("clico na opção  cadastrar e continuar") do
   page.clicarCadastrareContinuar
  end
  
  Then("apresenta a pagina de produtos") do
    pending # Write code here that turns the phrase above into concrete actions
  end

  
  Then("devera ser apresentado a seguinte {string}") do |mensagem|
    page.has_text?(mensagem)
    expect(page.has_text?(mensagem)).to eq true
    
  end