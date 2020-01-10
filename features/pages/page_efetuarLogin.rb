class EfetuarLogin
    include Capybara::DSL

def selecionarEntrar
    find("#welcome-button-sign-in")
end

def continuarFacebook
    find("#login-facebook-button-sign-in")
end

def continuarEmail
    find("#login-home-email-button-sign-in")
end

def informarEmail
     find("#login-mail-input-email")
end

def informarSenha
    find("#login-mail-input-password")
end

def clicarEntrar
    find("#login-mail-button-sign-in")
end

def maiorde18
    find("#age-gate-button-yes")
end
    
end