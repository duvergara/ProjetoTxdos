page =  EfetuarLogin.new

When("que usuario seleciona opção entrar") do
    page.maiorde18.click
    page.selecionarEntrar.click
  end
  
  When("seleciona que deseja logar sua conta de email") do
   page.continuarEmail.click
  end
  
  When("informa os campos {string} e {string}") do |login, senha|
   page.informarEmail.send_keys(login)
   page.informarSenha.send_keys(senha)
  end
  
  When("clico na opção  entrar") do
  page.clicarEntrar.click
  end
  
  Then("e apresentado a  seguinte {string}") do |mensagem|
    page.has_text?(mensagem)
    expect(page.has_text?(mensagem)).to eq true
  end