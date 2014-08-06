@registration
Feature: Campaign-based Registration
	Checking that the tokens work

	@ss-90
	Scenario: A user tries to open the registration without token
		When I visit the registration page with token ""
		Then I should be at the newsletter registration page

	@ss-90
	Scenario: A user tries to open the registration with a token
		When I visit the registration page with token "test"
		Then I should be at the normal registration page	