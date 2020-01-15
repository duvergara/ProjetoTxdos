Before do
    visit "https://www.ze.delivery/" 
    Capybara.page.driver.browser.manage.window.maximize
end

After do  
    Capybara.current_session.driver.quit
    visit ""https://www.ze.delivery/" "  
  end
