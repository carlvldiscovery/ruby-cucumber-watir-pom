class MyAccPage
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
       
      
    
      def open_myaccount
        @browser.link(css: '[class ^= "iconWrapper"] [class *= "link-y8nTYy1T"]')
      end
       
      def text_first_name
         @browser.text_field(id: 'firstName')
         
      end    
   
      def open_update
         @browser.button(css: '[class *= "profile-form"] [class *= "profile-form__submit-button"]')
        #  (id: 'updateBtn')
      end
  
   end
