class LoginPage < SitePrism::Page
  set_url '/'

  element :etEmail, :id, 'user_email'
  element :etPassword, :id, 'user_password'
  element :login_button, :id, 'new-signin-button'

end