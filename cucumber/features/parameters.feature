Feature: Main tests
  As person
  I want to add numbers
  So I can find out the total

  @parameterised
  Scenario: Adding parameterised
    Given I have loaded the test app
    When I increase the value by 7
    Then the value is increased to 7

  @outline
  Scenario Outline: Adding <NUM> via an outliine
    Given I have loaded the test app
    When I increase the value by <NUM>
    Then the value is increased to <NUM>

    Examples:
      | NUM |
      | 1   |
      | 2   |
      | 3   |
