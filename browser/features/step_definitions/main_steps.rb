require './config/urls'
require './config/test_content'

Given(/^I am on the homepage$/) do
  @browser.goto(BASE_URL)

  $appPage.onetrust_accept.click
end

When(/^I search for a test show$/) do
  $searchPage.open_search.click
  $searchPage.query_text.set TEST_SHOW
end

Then(/^I see the test show in the search results$/) do
  # 'eventually' waits until the action succeeds or times out.
  Support::Eventually.eventually(timeout: 5) { expect($searchPage.result_card_headings).to include(TEST_SHOW) }
end
