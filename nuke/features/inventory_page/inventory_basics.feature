#Inventory Basics
@inventory
Feature: Inventory Screen basics
This should be used to test the creation, editing, etc of the boxes


	Scenario: User can modify a title
		Given that a the "inventory" user exists
		When I log in as a user
		And I click away the newbie popup window
		And I click on the first box
		And I modify the box title field to say "big ass box"
		And I click "Speichern"
		Then I should have a box with the title "big ass box"

	Scenario: User can add items to the contents
		Given that a the "inventory" user exists
		When I log in as a user
		And I click away the newbie popup window
		And I click on the first box
		And I modify the box title field to say "Add Parts"
		And I add an item "Gasoline"
		And I add an item "Nails"
		And I add an item "Timer"
		And I click "Speichern"
		Then I should have a box with the title "Add Parts" that has "3" parts

	Scenario: User can remove an item out of the contents
		Given that a the "inventory" user exists
		When I log in as a user
		And I click away the newbie popup window
		And I click on the first box
		And I modify the box title field to say "Remove Parts"
		And I delete the first item in the contents
		And I click "Speichern"
		Then I should have a box with the title "Remove Parts" that has "2" parts

	Scenario: User can add items and cancel and there is no update to parts number
		Given that a the "inventory" user exists
		When I log in as a user
		And I click away the newbie popup window
		And I click on the first box
		And I modify the box title field to say "Cancel Parts"
		And I add an item "Gasoline"
		And I add an item "Nails"
		And I add an item "Timer"
		And I add an item "Timer 2"
		And I add an item "Timer 3"
		And I add an item "Timer 4"
		And I add an item "Timer 5"
		And I click "Abrechen"
		Then I should have a box with the title "Cancel Parts" that has "2" parts

	Scenario: User can delete all items from the contents
		Given that a the "inventory" user exists
		When I log in as a user
		And I click away the newbie popup window
		And I click on the first box
		And I modify the box title field to say "Deleted All Parts"
		And I get rid of all box contents
		And I click "Speichern"
		Then I should have a box with the title "Deleted All Parts" that has "0" parts		

	Scenario: User can upload a photo
		Given that a the "inventory" user exists
		When I log in as a user
		And I click away the newbie popup window
		And I click on the first box
		And I modify the box title field to say "Photo Upload"
		And I upload a photo
		And I select that photo as the default
		And I click "Speichern"
		Then I should have a box with the title "Photo Upload" with my new photo

	Scenario: User add and remove a box from the cart
		Given that a the "inventory" user exists
		When I log in as a user
		And I click away the newbie popup window
		And I add the first box to be sent
		Then I see that the box is in the cart
		And I remove the box from the cart
		Then I see an empty cart

  @SS-223
  Scenario: show the right number of boxes
    Given I am on "https://www.sendandstore.de/home#/"
    And I fill in "1 fliegender Toter vogel " in the "tag" field
    Then the "product info" should be the exactly the number of tags I have entered



		

