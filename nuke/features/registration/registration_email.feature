@registration
Feature: Registration Emails
	
	@email
	Scenario: Activation Email is sent
		Given that a user has all the correct information
		When I visit the registration page with token "test"
		And I fill in the first name field with ""
		And I fill in the last name field with ""
		And I fill in the mobile phone field with ""
		And I fill in the email field with ""
		And I fill in the password field with ""
		And I fill in the password confirmation field with ""
		And I select the "Was ist Ihr Lieblingsurlaubsziel?" for the security question
		And I answer the security question with "Ebbelwoi geh immä noi"
		And I check the AGBs
		And I submit the registration form
		Then I should be in the Inventory Dashboard
		And I should see the new customer how-to
		Then I click away the popup window
		Then I will find an email sent to the user with the title "Anmeldebestätigung"
		Then I will click on the registration link in the email
		Then I should be in the Inventory Dashboard
		And I click away the newbie popup window