Given('I Visit the Journal Page') do
  @app = App.new
  @app.loginpage.load
end

When("I Fill the email with email") do
  expect(@app.loginpage).to have_etEmail
  @app.loginpage.etEmail.set "pawanasutha02@gmail.com"
end

When("I Fill the password with password") do
  expect(@app.loginpage).to have_etPassword
  @app.loginpage.etPassword.set "pawanasutha"
end

When('I Click button Login\/SignIn') do
  expect(@app.loginpage).to have_login_button
  @app.loginpage.login_button.click
end

Then('the page new invoice  will be shown') do
  @app.mainpage.load
end

When("I Click DropDown Customer") do
  expect(@app.mainpage).to have_ddCustomer
  @app.mainpage.ddCustomer.click
end

=begin
And("I Choose Existing Customer") do
  ddExisting = find('#select2-result-label-29').click
end
=end

And("I Choose Register New One") do
  expect(@app.mainpage).to have_ddRegisterCust
  @app.mainpage.ddRegisterCust.click
end

Then("I Will See the Register Form") do
  sleep 2
end
#ThisIsHardCode , Must Change Every Success Create Customer xD
When("I Fill the CustomerName") do
  expect(@app.regform).to have_etCustName
  @app.regform.etCustName.set "NewCustomer"

end
When("I Fill the CustomerEmail") do
  expect(@app.regform).to have_etCustMail
  @app.regform.etCustMail.set "NewCustomer@GMAIL.COM"
end
When("I Fill the CustomerBillingAddress") do
  expect(@app.regform).to have_etCustBillAddr
  @app.regform.etCustBillAddr.set "NewCustomer"
end
When("I Fill the CustomerPhone") do
  expect(@app.regform).to have_etCustPhone
  @app.regform.etCustPhone.set "081254587845"
end
When("I Click Save") do
  expect(@app.regform).to have_btnRegistCust
  @app.regform.btnRegistCust.click
end
Then("I Finish Register New Customer") do
  sleep 2
end

=begin

When("I Fill the Transcation Date Manually") do
  etDate = find(:id , 'transaction_transaction_date')
  etDate.send_keys('20/07/2030')
  sleep 2
end
=end

When("I Fill the Transcation Date Using Date Picker") do
  datePicker = find(:css, 'body.pace-done:nth-child(2) div.show-expired-notification:nth-child(2) div.out div.pgid-invoices-new.dz-clickable:nth-child(19) section.page-content.transactions div.col-md-12 div.row form.simple_form.form-horizontal div.invoice-details.row:nth-child(11) div.col-lg-2.payment-term-container:nth-child(2) div.payment-terms div.form-group:nth-child(1) div.input-group.date span.input-group-addon.custom > i.fa.fa-calendar')
  datePicker.click
  sleep 1
  selectDate = find(:xpath, '//tr[4]//td[4]')
  selectDate.click
  sleep 1
end

When("I Click DropDown Product") do
  expect(@app.mainpage).to have_ddProduct
  @app.mainpage.ddProduct.click
end


And("I Choose Existing Product") do
  ddProductExisting = find(:xpath, '/html[1]/body[1]/div[2]/div[4]/div[4]/section[1]/div[1]/div[1]/form[1]/div[6]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/th[1]/div[3]/div[2]/ul[1]/li[2]/div[1]')
  ddProductExisting.click
  sleep 1
end


When("I Fill the Unit Price") do
  etUnitPrice = find(:id, 'transaction_transaction_lines_attributes_0_rate')
  etUnitPrice.send_keys('10000')
end

=begin
When("I Upload the image") do
  upld = find(:id, 'dropzoneAdd');
  upld.attach_file("E:\\SQLServer.PNG");
  #upld.attach_file('/SQLServer.PNG',minimum:1 , disabled: true)
  #upld.click
  sleep 1
  #FilePath
  #upld.send_keys "E:/SQLServer.PNG"
end
=end

And("I Click Create Button") do
  expect(@app.mainpage).to have_btnCreateInv
  @app.mainpage.btnCreateInv.click
end

Then("Finish Register Sales Invoice") do
  sleep 2
end

