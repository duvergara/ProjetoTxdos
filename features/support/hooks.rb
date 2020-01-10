Before do
    visit "https://www.ze.delivery/" 
    Capybara.page.driver.browser.manage.window.maximize
end

After do  
    Capybara.current_session.driver.quit
    visit "https://www-pre.bompracredito.com.br/emprestimo-pessoal"  
  end