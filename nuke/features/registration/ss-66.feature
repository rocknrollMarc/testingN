@registration
Feature: Registration Redirection

	@ss-66 
	Scenario: A user tries to go to the home section when not logged in
		When A user visits "/home" and is not logged in
		Then I expect to see the login screen