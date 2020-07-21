Given('I Visit the Journal Page') do
  visit '/'
end


When("I Fill the email with email") do
  etEmail = find('#user_email')
  etEmail.send_keys("pawanasutha02@gmail.com")
end

When("I Fill the password with password") do
  etPassword = find('#user_password')
  etPassword.send_keys("pawanasutha")
end

When('I Click button Login\/SignIn') do
  btnLogin = find('#new-signin-button')
  btnLogin.click
end

Then('the page new invoice  will be shown') do
  sleep 2
end


When("I Click DropDown Customer") do
  ddCustomer = find('#select2-chosen-19')
  ddCustomer.click
  sleep 1
end

=begin
And("I Choose Existing Customer") do
  ddExisting = find('#select2-result-label-29').click
end
=end

And("I Choose Register New One") do
  ddRegisterCust = find(:id, 'select2-result-label-0')
  ddRegisterCust.click
end

Then("I Will See the Register Form") do
  sleep 2
end
#ThisIsHardCode , Must Change Every Success Create Customer xD
When("I Fill the CustomerName") do
  etCustName = find('#person_display_name')
  etCustName.send_keys("CREATENEW")
end
When("I Fill the CustomerEmail") do
  etCustMail = find('#person_email')
  etCustMail.send_keys("CREATENEW@gmail.com")
end
When("I Fill the CustomerBillingAddress") do
  etCustBillAddr = find('#person_billing_address')
  etCustBillAddr.send_keys('CREATENEW')
end
When("I Fill the CustomerPhone") do
  etCustPhone = find('#person_phone')
  etCustPhone.send_keys('123')
end
When("I Click Save") do
  btnRegist = find('#aodc-add')
  btnRegist.click
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
  datePicker = find(:css , 'body.pace-done:nth-child(2) div.show-expired-notification:nth-child(2) div.out div.pgid-invoices-new.dz-clickable:nth-child(19) section.page-content.transactions div.col-md-12 div.row form.simple_form.form-horizontal div.invoice-details.row:nth-child(11) div.col-lg-2.payment-term-container:nth-child(2) div.payment-terms div.form-group:nth-child(1) div.input-group.date span.input-group-addon.custom > i.fa.fa-calendar')
  datePicker.click
  sleep 1
  selectDate = find(:xpath , '//tr[4]//td[4]')
  selectDate.click
  sleep 1
end

When("I Click DropDown Product") do
  ddProduct = find(:id ,'select2-chosen-20')
  ddProduct.click
  sleep 1
end


And("I Choose Existing Product") do
  ddProductExisting = find(:xpath ,'/html[1]/body[1]/div[2]/div[4]/div[4]/section[1]/div[1]/div[1]/form[1]/div[6]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/th[1]/div[3]/div[2]/ul[1]/li[2]/div[1]')
  ddProductExisting.click
  sleep 1
end


When("I Fill the Unit Price") do
  etUnitPrice = find(:id,'transaction_transaction_lines_attributes_0_rate')
  etUnitPrice.send_keys('10000')
end

=begin
When("I Upload the image") do
  upld = find(:xpath,'/html[1]/body[1]/div[2]/div[4]/div[4]/section[1]/div[1]/div[1]/form[1]/div[7]/div[2]/div[1]/div[3]/div[3]/div[1]').click
  sleep 1
  #FilePath
  upld.send_keys("E:/SQLServer.PNG")
  btnSaveImg =find(:id , "save").click
end
=end

And("I Click Create Button") do
  btnCreateInv= find(:id ,'create_button').click
end


Then("Finish Register Sales Invoice") do
  sleep 1
end

