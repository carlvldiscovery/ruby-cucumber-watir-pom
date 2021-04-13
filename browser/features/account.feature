Feature: My Account
  As a content viewer
  I want to login with credentials
  To update my user details

Scenario: User updates name 
   Scenario: User Logs in  
    Given I am on Dplus
    When I select login 
    Then I enter the email
    And I enter the password
    Then I select submit
    And I navigate to my account
    Then I enter the first name 
    Then I select update