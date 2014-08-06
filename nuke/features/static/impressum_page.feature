@impressum
Feature: Impressum 

  In order to get info on send and store
  As a User
  I want to have an impressum page

  @SS-79
  Scenario: impressum page
    Given I am in the "homepage"
    And I click the "impressum" link
    Then I should be on the "impressum" page

  @SS-215
  Scenario: Changed address
    Given I am on the "impressum" page
    Then I should see the new address:
      """
      Liquid Labs GmbH
      Steindamm 80
      7. OG
      20099 Hamburg, Germany
      """
  @SS-212
  @SS-421
  Scenario: New Liquidlabs data
    Given I am on the "impressum" page
    Then I should see the new <type> <data>:
      | type                      |         data              |
      | number                    | +49 40 609 45 101         |
      | email                     | info@sendandstore.de      |
      | Internet                  | www.sendandstore.de       |
      | Registergericht           | Amtsgericht Hamburg       |
      | Registrierungsnummer      | HRB 118537                |
      | Umsatzsteuer-Identifikationsnummer gemäß § 27a Umsatzsteuergesetz | DE278030169 |
    And I should see this content:
      """
      Fotos: http://www.dollarphotoclub.com
      Icons: http://www.flaticons.net
      Haftungshinweis: Trotz sorgfältiger inhaltlicher Kontrolle übernehmen wir keine Haftung für die Inhalte externer Links. Für den Inhalt der 
      verlinkten Seiten sind ausschließlich deren Betreiber verantwortlich.
      """
      

