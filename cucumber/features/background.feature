Feature: Main tests
  As person
  I want to add numbers
  So I can find out the total

  Background: Setup
    Given I have loaded the test app

  @simple
  Scenario: Adding
    When I add 7
    Then the current value is 7

  @parameterised
  Scenario: Adding parameterised
    When I increase the value by 7
    Then the value is increased to 7

  @outline
  Scenario Outline: Adding <NUM> via an outliine
    When I increase the value by <NUM>
    Then the value is increased to <NUM>

    Examples:
      | NUM |
      | 1   |
      | 2   |
      | 3   |
