@social
Feature: Social links

  In order to be able to share content with the social web
  As a user
  I want to have social network links

  @SS-242
  Scenario Outline: Social links
    Given I am on the "Start page"
    When I click the  <social> link 
    Then I should be redirected to <url>

    Examples: 
      |       social      |   url                               |
      |     Facebook      |  https://www.facebook.com/#         |
      |     Twitter       |  https://www.twitter.com/#          |
