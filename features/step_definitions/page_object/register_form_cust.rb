class RegisterFormCust < SitePrism::Page

  element :etCustName, '#person_display_name'
  element :etCustMail, '#person_email'
  element :etCustBillAddr , '#person_billing_address'
  element :etCustPhone , '#person_phone'
  element :btnRegistCust , '#aodc-add'

end