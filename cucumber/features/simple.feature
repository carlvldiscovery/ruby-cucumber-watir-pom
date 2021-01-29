Feature: Main tests
  As person
  I want to add numbers
  So I can find out the total

  @simple
  Scenario: Adding
    Given I have loaded the test app
    When I add 7
    Then the current value is 7
