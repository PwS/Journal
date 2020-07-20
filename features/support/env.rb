require 'capybara/cucumber'

Before do
  Capybara.default_driver = :selenium_chrome
  Capybara.app_host = 'https://sandbox.jurnal.id/invoices/new'

  page.driver.browser.manage.window.resize_to(1366, 780)
end

