@return_single
Feature: This is to return the single box to the user

	Scenario: Return the first box
		Given that a the "sendSingle" user exists
		When I log in as a user
		And I click away the newbie popup window
		And I add the first box to be returned
		And I click the button "Anfordern"
		Then I am on the checkout page
		And I click the button "Kostenpflichtig beauftragen"
		Then the status of the first box should be "In Verarbeitung"
		# Shortcutting things
		# TODO: verify that the emails came along the way
		# Verify that the status in the dashboard is correct at each step
		# Go to the backend and move the box into the warehouse
		When I log into the backend with "admin@sendandstore.de" and "foo"
		Then I am on the backend main page
		When I click on the "Box" Link
		Then I am on the backend boxes page
		And I should see the box "Sendero Single"
		When I click on the box "Sendero Single"
		And I click on the box settings button
		And I click on the transport link
		#And I click on the received link ??? What is it called?
		Then the box "Sendero Single" should have a status of "gelagert"
		When I log in as a user
		And I click away the newbie popup window
		Then I should have a box with the title "Add Parts" that has a status of "gelagert"
