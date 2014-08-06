@Preise_page
@Static
@SS-96
Feature: Preise Page

  In order to inform myself concerning the Price
  As a User
  I want to have a Price page

  Scenario: Preise Page
    Given I am on the home page
    When I click the "Price" link
    Then I should be on the "Price" page

  @SS-96
  Scenario: Link to Packenleitung

    In order to find out how to pack an Item
    As a User
    I want to have a link to packaleitung

    Given I am on the "Price" page
    When I click the "packanleitung" link
    Then I should be on the "packanleitung" page


