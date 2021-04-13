Feature: Main tests
  As person
  I want to add numbers
  So I can find out the total

  @simple
  Scenario: Adding
    Given I have loaded the test app
    When I add 7
    Then the current value is 7

  Scenario: Subtracting
    Given I have loaded the test app
    When I subtract 5
    Then the current value is -5
    
  Scenario: Multiply
    Given I have loaded the test app
    And I add 2
    When I multiply by 3
    Then the current value is 6

  Scenario: Maths
    Given I have loaded the test app
    And I add 2
    When I multiply by 3
    Then the current value is 6 