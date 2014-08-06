@newsletter
@SS-217
Feature: Newsletter

  In order to get updated on send and store
  As a User
  I want to be able to be added to the newsletter email

  Scenario: Newsletter registration
    Given I enter "https://www.sendandstore.de/registration/foo"
    And I see the "Newsletter" form
    When I enter my valid "email"
    And click the "Newsletter abonnieren" button
    Then I should see a confirmation message with the content:
    """
    Vielen Dank

    Sie haben sich erfolgreich für unseren Newsletter angemeldet!
    """
    When I press the "schliessen" button
    Then I should be on the "index" page


