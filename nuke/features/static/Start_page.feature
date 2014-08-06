@start_page
@SS-95
Feature: Start page

  In order to have a landing page
  As a user
  I want to have a static start page

  @SS-1
  Scenario: Landing page
    Given I am a registered user
    When I type in "www.sendandstore.de"
    Then I should be on the "start"page

  @SS-95
  Scenario: Datenschutz link

    In order to be informed of the Datenschutz
    As a User
    I want to have a Datenschutz page

    Given I am on the "start" page
    When I click the "Datenschutz" link
    Then I should be on the "Datenschutz" page

  @SS-94
  Scenario: Register Button

    In order to register for the service
    As a user
    I want to have a register button

    Given I am on the "Start page"
    When I click the "Jetzt starten" button
    Then I should be on the "Register page"

  @SS-92
  Scenario: Newsletter signup functionality

    In order to recive news updates from the send and store site
    As a user 
    I want to revice and sign up for the newsletter

    Given I am in the "Start page"
    And I see the "Newsletter signup" button
    When I click the "Newsletter signup" button
    Then I should be prompted for my email

  @SS-130
  Scenario: Google tracking
    Given I am on the home page
    Then I should have google tracking enabled 

@SS-131
  Scenario: Google conversion
    Given I am on the "Start page"
    Then The google conversion code should be "974098915"

  @SS-151
  @redirect-index-page
  Scenario Outline: index page redirector

    In order to come to the right page#
    As a User, Admin, Support, fullfillment
    I want to be redirected to the right page

    Given I am a <role>
    And I enter "http://www.sendandstore"
    Then I should be redirected to <www>

    Examples:
      | role        |         www                           | 
      | none        | https://www.sendandstore.de           |
      | admin       | https://adm.sendandstore.de           |
      | fulfillment | https://fullfillment.sendandstore.de  |
      | support     | https://support.sendandstore.de       |

  @SS-336
  Scenario Outline: checking links

    In order to use the send and store site effectively 
    As a User
    I want have valid links

    Given I am on the "Start page"
    When I click <link>
    Then I should be brought to <url>

    Examples:
      |     link                |             url                             |
      |     Datenschutz         | https://www.sendandstore.de/datenschutz     |
      |     AGB                 | https://www.sendandstore.de/agb             |
      |     Kontakt             | https://www.sendandstore.de/contact         |
      |     Jetzt Starten       | https://www.sendandstore.de/registration    |
      |     Start               | https://www.sendandstore.de/                |
      |     Preise              | https://www.sendandstore.de/pricing         |
      |     Packen              | https://www.sendandstore.de/howtopacK       |
      |     Fragen              | https://www.sendandstore.de/faq             |
      |     Kontakt             | https://www.sendandstore.de/contact         |
      |     My Depot            | https://www.sendandstore.de/home            |
      |     email               | https://www.sendandstore.de/contact         |
      |     Impressum           | https://www.sendandstore.de/impressum       |
 
