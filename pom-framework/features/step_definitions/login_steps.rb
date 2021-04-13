require './config/urls'
require './config/test_content'




Then(/^I enter my email$/) do 
  on(LoginPage) do |page|
  page.query_text_email = EMAIL
  end
end

Then(/^I enter my password$/) do
  on(LoginPage) do |page|
  page.query_text_password = PASSWORD
  end
end

Then(/^I click on submit$/) do
  on(LoginPage) do |page|
  page.open_submit
  end
end

Then(/^I enter the wrong password$/) do
  on(LoginPage) do |page|
  page.query_text_password = WRONG_PASSWORD
  end
end  

  
