require "./config/urls"
require "./config/test_content"
require "./features/support/utilities"

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

When(/^I click on login CTA$/) do
  on(AppPage) do |page|
    page.open_login
  end
end

Then(/^I am logged in$/) do
  on(AppPage) do |page|
    page.wait_until(5) { page.open_myaccount_element.present? }
    # page.wait_until(5) { page.favourites_element.present? }
  end
end

Then(/^I fail to log in$/) do
  on(AppPage) do |page|
    page.wait_until(5) { page.warning_banner_element.present? }
    # page.wait_until(5) { page.favourites_element.present? }
  end
end

When(/^I click on my account$/) do
  on(AppPage) do |page|
    page.open_myaccount
  end
end

Then (/^the following menu options are present:$/) do |options|
  on(AppPage) do |page|

    expected_texts = Support::ListsAndArrays::convertListToArray(options)
    menu_option_texts = Support::ListsAndArrays::getElementTexts(page.menu_items_elements)
    textDiffArray = Support::ListsAndArrays::getArrayDiff(expected_texts, menu_option_texts)
  
    expect(textDiffArray).to eq([])
  end
end
