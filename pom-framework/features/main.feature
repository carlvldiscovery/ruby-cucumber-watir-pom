Feature: Main tests
  As a content viewer
  I want to quickly find my favourite shows
  So I can start watching them with minimal fuss

  Background: Starting on the hompage
    Given I am on the homepage

  @smoke @regression
  Scenario: Searching
    When I search for a test show
    Then I see the test show in the search results

  @carl
  Scenario: Verify the main menu options are correct
    Then the following menu options are present:
      | Programs   |
      | Channels   |
      | Tablå      |
      | Sports     |
      | Tokyo 2021 |
      | Game       |
