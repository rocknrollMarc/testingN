@send_single
Feature: This is to send a single box into the warehouse

	Scenario: Send the first box
		Given that a the "sendSingle" user exists
		When I log in as a user
		And I click away the newbie popup window
		And I click on the first box
		And I modify the box title field to say "Sendero Single"
		And I add an item "Gasoline"
		And I add an item "Fingernails"
		And I add an item "Timer"
		And I click "Speichern"
		# TODO This needs to be corrected once the bug is fixed
		Then I should have a box with the title "Sendero Single" that has "3" parts
		And I add the first box to be sent
		And I click the button "Anfordern"
		Then I am on the checkout page
		# TODO: This is actually a conditional block
		And I fill in "street" with "Steindamm"
		And I fill in "street_no" with "80"
		And I fill in "zip_code" with "20099"
		And I fill in "city" with "Hamburg"
		And I fill in "state" with "Hamburg"
		And I select "Deutschland" from the drop down menu "country"
		# END Conditional address
		# TODO this is a conditional payment block
		And I fill in "elv_account_holder" with "Send Testero"
		And I fill in "elv_iban"  with "DE12500105170648489890"
		And I fill in "elv_bic" with "HASPDEHHXXX"
		# END Conditional block
		And I click the button "Kostenpflichtig beauftragen"
		# Shortcutting things
		# TODO: verify that the emails came along the way
		# Verify that the status in the dashboard is correct at each step
		# Go to the backend and move the box into the warehouse

	@move_single_box_to_warehouse
	Scenario: The admin can move the box into storage for simulation purposes
		Given that a the "sendSingle" user exists
		When I log into the backend with "admin@sendandstore.de" and "foo"
		Then I am on the backend main page
		When I click on the "Pickups" Link
		Then I am on the backend boxes page
		And I should see the box from the user
		When I click on the box from the user
		And I click on the box settings button
		And I click on the transport link
		And I click on the received link
		Then the box "Sendero Single" should have a status of "gelagert"

	Scenario: The user can see the box is now stored in the warehouse
		Given that a the "sendSingle" user exists
		When I log in as a user
		And I click away the newbie popup window
		Then I should have a box with the title "Add Parts" that has a status of "gelagert"



# Send all the boxes one by one
