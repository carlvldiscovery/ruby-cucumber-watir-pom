Feature: Main tests
  As a content viewer
  I want to quickly find my favourite shows
  So I can start watching them with minimal fuss

  @smoke @regression
  Scenario: Searching
    Given I am on the homepage
    When I search for a test show
    Then I see the test show in the search results
