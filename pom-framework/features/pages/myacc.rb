require 'page-object'

class AccountPage
  include PageObject


  #INPUT EMAIL
  text_field(:query_text_email, css: '[class ^= "login__form"] [class ^= "input"]')
  #INPUT EMAIL
  text_field(:query_text_password, css: '[class ^= "login__form"] [class *= "input__input--password"]')
  #INPUT EMAIL
  button(:open_submit, id: 'loginBtn')
  #INPUT FIRST NAME 
  text_field(:text_first_name, id: 'firstName')
  #INPUT BIRTH DAY
  select_list(:list_birth_day, id: 'birthDay')
  #UPDATE
  button(:open_update, css: '[class *= "profile-form"] [class *= "profile-form__submit-button"]')
    #  (id: 'updateBtn')
end
  
