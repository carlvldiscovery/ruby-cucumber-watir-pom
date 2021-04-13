class LoginPage
    def initialize(browser)
      @browser = browser
    end

    def open_login
     @browser.link(css: '[class ^= "iconWrapper"] [class ^= "link"]')
    end
    
    def query_text_email
      @browser.text_field(css: '[class ^= "login__form"] [class ^= "input"]')
    end

    def query_text_password
      @browser.text_field(css: '[class ^= "login__form"] [class *= "input__input--password"]')
    end    

    def open_submit
      @browser.button(id: 'loginBtn')
    end
     
  
 end