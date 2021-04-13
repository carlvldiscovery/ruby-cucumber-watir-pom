require './config/urls'
require './config/test_content'

Given(/^I am on Dplus$/) do
  on(AppPage) do |page|
    @browser.goto(BASE_URL)
  
    page.onetrust_accept
  end
end

  When(/^I select login$/) do
    on(AppPage) do |page|
    page.open_login
  end
end

  Then(/^I enter the email$/) do 
    on(AppPage) do |page|
    page.query_text_email = EMAIL
  end
end

  Then(/^I enter the password$/) do
    on(AppPage) do |page|
    page.query_text_password = PASSWORD
  end
end

  Then(/^I select submit$/) do
    on(AppPage) do |page|
    page.open_submit
  end
end  
 

  Then(/^I enter the first name$/) do
    on(AccountPage) do |page|
    # $myaccPage.text_first_name.select
    page.text_first_name = FIRST_NAME
  end
end

Then(/^I select the birth day$/) do
  on(AccountPage) do |page|
  page.list_birth_day = BIRTH_DAY
  end
end


  Then(/^I select update$/) do
    on(AccountPage) do |page|
    page.open_update
  end  
end