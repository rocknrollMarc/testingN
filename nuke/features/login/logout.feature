@Logout
Feature: Logout

  In order to Logout Safely 
  As a Staff member
  I want to be able to logout

  @SS-197
  Scenario: Logout with flash message

    In order to be sure that I have logged out successfully
    As a "Staff member"
    I want to have a logout button

    Given I have successfully logged in with "valid credentials"
    When I want to "logout" 
    And I press the "logout" button
    Then I should see a the message "Vielen Dank"


