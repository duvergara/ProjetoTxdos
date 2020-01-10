page = EfetuarPedido.new

When("que  usuario deseja efetaur seu pedido") do
    page.maiorde18.click
   page.inserirEnderecoPedido.click
  end
  
  When("seleciona opçãp inserir endereço para pedir") do
   page.informarEndereco.click
  end
  
  When("informa o campos{string} e {int}") do |enderecoEnumero, complemento|
    page.informarEndereco.send_keys(enderecoEnumero)
    page.informarComplemento.send_keys(complemento)
  end
  
  When("clico na opção continuar") do
 page.clicarContinuar.click
  end
  
  When("seleciona opção ver produtos disponiveis") do
    page.visualizarProdutos.click
  end
  
  Then("produtos disponiveis para aquela localização são exibidos") do
    page.has_text?(Cervejas)
    expect(page.has_text?(Cervejas)).to eq true
  end

  Then("e apresentado a seguinte {string}") do |mensagem|
    page.has_text?(mensagem)
    expect(page.has_text?(mensagem)).to eq true
  end
  