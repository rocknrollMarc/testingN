@password_recovery

Feature: A User can recover his password

  In order to regain access to my account
  As a Registered user
  I want to recover my password

  @SS-216
  @SS-273
  Scenario: Recover password with email
    Given I am a "Registered" user
    And I am on the "Login" page
    When Im on the "lostpassword" page 
    And  I click "Ich hab mein password vergessen"
    And I enter my email "" 
    And press "passwort zuruecksetzen"
    Then I should see an alert telling me that my password  will be reset

  @SS-273
  Scenario: Lost email with Sicherheitsfrage 
    Given I am  User "Marc Bluemner"
    And I am on the "Login" page
    When I "click" on the "Sicherheitsfrage" "dropdown menu"
    And choose wie hiess ihr erstes Haustier
    And Enter "Gucci"
    Then I should get an email with a "recovory" link

  @SS-274
  Scenario: reset password page
    Given I am on the home page
    When I click the "reset password" button 
    Then I should be on the "reset-password" page

  @SS-275
  @SS-273
  Scenario: lost password page
    Given I am on the home page
    When I click "Ich hab mein password vergessen"
    Then I should be on the "lost-password" page

  @SS-333
  Scenario: Prevent back button on password reset
    Given I am on the "reset-password" page
    When I reset my password
    And I click the "Back button"
    Then The default behaviour of the "back button" should be prevented

  


