class CadastrarUsuario
include Capybara::DSL     

def selecionarEntrar
find("#welcome-button-sign-in")
end

 def selecioneCadastrar
    find("#login-home-link-dont-have-account")
 end

def maiorde18
find("#age-gate-button-yes")
end

def informarNome
    find("#signup-email-input-name")
end

def selecionarEmail
find("#signup-home-button-email")
end


def selecionarFacebook
find("#login-facebook-button-sign-in") 
end

def informarCelular
     find("#signup-email-input-phone")
end

 def informarCpf
  find("#signup-email-input-document")  
 end

def informarEmail
find("#signup-email-input-email")
end

def informarSenha
find("#signup-email-input-password")
end

def clicarEntrar
find("#login-mail-button-sign-in")
end


 def informarIdade
     find("#signup-email-input-age")
 end

 def clicarCadastrareContinuar
    find("#signup-email-button-signUp")
 end

end