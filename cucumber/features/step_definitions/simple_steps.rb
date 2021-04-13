require_relative '../support/test_app'

Given(/^I have loaded the test app$/) do
  $testApp = TestApp.new
end

When(/^I add 7$/) do
  $testApp.add(7)
end

When(/^I subtract 5$/) do
  $testApp.subtract(5)
end

When(/^I add 2$/) do
  $testApp.subtract(5)
end

When(/^I multiply by 3/) do
  $testApp.multiply(3,2)
end

Then(/^the current value is 7$/) do
  raise Exception, 'The value was not 7' if $testApp.get_value != 7
end

Then(/^the current value is -5$/) do
  raise Exception, 'The value was not 7' if $testApp.get_value != -5
end

Then(/^the current value is 6$/) do
  raise Exception, 'The value was not 7' if $testApp.get_value != 6
end