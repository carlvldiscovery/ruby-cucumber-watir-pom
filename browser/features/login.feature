Feature: Login
  As a content viewer
  I want to login with credentials
  So I can start watching all content


 Scenario: User Logs in  
    Given I am on homepage
    When I click on login CTA
    Then I enter my email
    And I enter my password
    Then I click on submit

