require './config/urls'
require './config/test_content'

Given(/^I am on the homepage$/) do
  on(AppPage) do |page|
    @browser.goto(BASE_URL)

    # Buttons are clicked by default when you call them (no need to ".click")
    page.onetrust_accept
  end
end

When(/^I search for a test show$/) do
  on(SearchPage) do |page|
    page.open_search
    page.query_text = TEST_SHOW
  end
end

Then(/^I see the test show in the search results$/) do
  on(SearchPage) do |page|
    # "?" isn't functional here, it's just a Ruby naming convention for boolean methods.
    page.wait_until(5) { page.result_card_headings.include? TEST_SHOW }
  end
end
