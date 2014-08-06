@Sicherheit_page
Feature: Sicherheit Page

  In order to know about security messures
  As a User
  I want to have a Security page

  Scenario: Sicherheits Page
    Given I am on the "Start page"
    When I click the "Sicherheits" link
    Then I should be on the "Sicherheits" page

  @SS-391
  Scenario: link location
    Given I am on the "Start page"
    Then the "Sicherheits" link should be between "Paken" and "Fragen"
