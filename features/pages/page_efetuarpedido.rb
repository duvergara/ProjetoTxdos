class EfetuarPedido
    include Capybara::DSL

def inserirEnderecoPedido
    find("#welcome-button-set-delivery-options")
end

def informarEndereco
    find("#address-search-input-address")
end

def informarComplemento
    find("#address-details-input-complement")
end

def clicarContinuar 
 find ("#address-details-button-continue")
end


def maiorde18
    find("#age-gate-button-yes")
end

def visualizarProdutos
    find("#see-products")
end
end
