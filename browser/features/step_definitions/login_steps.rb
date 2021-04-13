require './config/urls'
require './config/test_content'

Given(/^I am on homepage$/) do
    @browser.goto(BASE_URL)
  
    $appPage.onetrust_accept.click
  end

  When(/^I click on login CTA$/) do
    $loginPage.open_login.click
  end

  Then(/^I enter my email$/) do 
    $loginPage.query_text_email.set EMAIL
  end

  Then(/^I enter my password$/) do
    $loginPage.query_text_password.set PASSWORD
  end
  
  Then(/^I click on submit$/) do
    $loginPage.open_submit.click
  end
  

  