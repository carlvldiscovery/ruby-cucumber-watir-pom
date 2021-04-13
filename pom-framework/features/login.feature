Feature: Login
  As a content viewer
  I want to login with credentials
  So I can start watching all content


 Scenario: User Logs in  
    Given I am on the homepage
    When I click on login CTA
    And I enter my email
    And I enter my password
    And I click on submit
    Then I am logged in

 Scenario: User Logs in with wrong P/W 
    Given I am on the homepage
    When I click on login CTA
    And I enter my email
    And I enter the wrong password
    And I click on submit
    Then I fail to log in