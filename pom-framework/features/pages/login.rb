require 'page-object'

class LoginPage
  include PageObject

  #OPEN
  # link(:open_login, css: '[class ^= "iconWrapper"] [class ^= "link"]')
  #INPUT EMAIL
  text_field(:query_text_email, css: '[class ^= "login__form"] [class ^= "input"]')
  #INPUT PASSWORD
  text_field(:query_text_password, css: '[class ^= "login__form"] [class *= "input__input--password"]')
    
  #login
  button(:open_submit, id: 'loginBtn')
end
