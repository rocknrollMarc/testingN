@-62
Feature: cancel in editbox

  Background:
    Given I am logged in
    And I am on the "warehouse page"

  Scenario: I enter wrong text
    When I press "Details"
    And I fill in "Headline-info" with "Wrong text"
    And I press "Cancel"
    Then I should be redirected to the "warehouse page"
    And I should not see "Wrong Text" in the "Headline-info"
