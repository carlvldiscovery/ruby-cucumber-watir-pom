Feature: My Account
  As a content viewer
  I want to login with credentials
  To update my user details

Scenario: User updates Details 
    Given I am on the homepage
    When I click on login CTA
    And I enter my email
    And I enter my password
    And I click on submit
    And I click on my account
    Then I enter the first name 
    Then I select the birth day
    Then I select update