@SS-16
Feature: Create virtual warehouse overview

  Background:
    Given I am Logged in as a registered user
    And I am on the warehouse page

  Scenario:  Headline editable
    When I press "Product-info"
    And fill in "headline" with "My Box"
    Then The "Product-info" should show "My Box"

  Scenario: edit description
    When I Press "Details"
    And fill in the "first" description with "Box 1"
    And I fill in the "second" description with "Box 2"
    Then I should see the dscriptions listed 
    
    
