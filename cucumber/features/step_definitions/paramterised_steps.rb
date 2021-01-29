When('I increase the value by {int}') do |num|
  $testApp.add(num)
end

Then('the value is increased to {int}') do |num|
  raise Exception, "The value was not #{num}" if $testApp.get_value != num
end
