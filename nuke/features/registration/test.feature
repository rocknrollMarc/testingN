@test 
Feature: Registration Page
	The registration page should be accessible via the token
	Each of the fields should react as designed
	Email: MUST be valid
	Password & Password Confirmation: MUST match
	Mobile Phone: Should be a phone number



	Scenario: A user tries to register with the same email twice
		Given that a user has all the correct information
		When I visit the registration page with token "test"
		Then I should receive an error message "Hallo"