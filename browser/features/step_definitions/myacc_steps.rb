require './config/urls'
require './config/test_content'

Given(/^I am on Dplus$/) do
    @browser.goto(BASE_URL)
  
    $appPage.onetrust_accept.click
  end

  When(/^I select login$/) do
    $myaccPage.open_login.click
  end

  Then(/^I enter the email$/) do 
    $myaccPage.query_text_email.set EMAIL
  end

  Then(/^I enter the password$/) do
    $myaccPage.query_text_password.set PASSWORD
  end
  
  Then(/^I select submit$/) do
    $myaccPage.open_submit.click
  end
  

 

  When(/^I navigate to my account$/) do
    $myaccPage.open_myaccount.click
  end

  Then(/^I enter the first name$/) do
    # $myaccPage.text_first_name.select
    $myaccPage.text_first_name.set FIRST_NAME
  end
  
  Then(/^I select update$/) do
    $myaccPage.open_update.click
  end  