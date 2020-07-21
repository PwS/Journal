class MainPage < SitePrism::Page
  set_url 'invoices/new'

  element :ddCustomer, '#select2-chosen-19'
  element :btnCreateInv, :id, 'create_button'
  element :ddRegisterCust, :id, 'select2-result-label-0'
  element :ddProduct, :id, 'select2-chosen-20'

end