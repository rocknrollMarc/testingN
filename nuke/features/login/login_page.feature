@login,
@SS-389
@SS-135
Feature: A Staff member can login

  In order to Login 
  As a staff mamber 
  I want to have a login page

  @SS-138
  Scenario: A Staff member is asked for email and password

    In order to login
    As a staff member
    I want to be asked for email and password

    Given I am on the login page
    When have a valid "<Staff>" account
    Then I should see a text field for entering my "<email>"
    And I should see a test field for entering my "<password>"

  @SS-138
  Scenario: A staff member logs in

    In order to use the system
    As a Staff member 
    I want to be able to log in

    Given As a "Staff member" I have valid credentials
    And I am on the "<login page>"
    When I enter my "<email>" in the "email field" 
    And I enter my "<password>" in the "password field"
    Then I should be redirected to "<home page>"

  Scenario: Recognition

    In order to save time
    As a Staff member
    I want to be reconized by the system

    Given As a "<Staff member>" I have Successfully loged in before
    When I go to the send and store website
    Then I should be automaticaly redirected to the "<home page>"

    #database: the user-collection is Staff (email, password, role: string)
    

    


