@Contact_form
@SS-195
Feature: Contact form

  In order to get in contact with the send and store crew
  As a user
  I want to have a contact form

  @SS-15
  Scenario: email field for logged in user
    Given I am on the "Start page"
    And I click on the "Kontakt" link
    When I am logged in as a registered User
    Then I should see an "email" field

  Scenario: not logged in
    Given I am on the "Start page"
    And I click on "Kontakt" link
    When I am not logged in
    Then I should not see an "email" field



