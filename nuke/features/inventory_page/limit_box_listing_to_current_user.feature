@SS-65
Feature: Limit Box listing to current user

  Background:
    Given We are on the homepage
    And I am logged in as User 2
    And Bolth Users are in the "warehouse page"
    And User 1 created a box called "User 1 box"
    And User 2 created a box called "User 2 Box"

  Scenario: User 1 checkes his Boxes
    When "User 1" is on the "warehouse page"
    Then he should see "User 1 box"
    And he should not see "User 2 box"

  Scenario: User 2 checkes his Boxes
    When "User 2" is on the "warehouse page"
    Then he should see "User 2 box"
    And he should not see "User 1 box"
    
