require_relative '../support/test_app'

Given(/^I have loaded the test app$/) do
  $testApp = TestApp.new
end

When(/^I add 7$/) do
  $testApp.add(7)
end

Then(/^the current value is 7$/) do
  raise Exception, 'The value was not 7' if $testApp.get_value != 7
end
