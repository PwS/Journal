require 'capybara/cucumber'
require 'site_prism'

Before do
  Capybara.ignore_hidden_elements = true
  Capybara.default_driver = :selenium_chrome
  Capybara.app_host = 'https://sandbox.jurnal.id/'

  page.driver.browser.manage.window.resize_to(1366, 780)
end

