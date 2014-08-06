@registration
Feature: Country and language set

	@ss-253
	Scenario: A new user will have their country set to Germany
		Given that a user has all the correct information
		When I visit the registration page with token "test"
		And I fill in the first name field with ""
		And I fill in the last name field with ""
		And I fill in the mobile phone field with ""
		And I sill in the email field with ""
		And I fill in the password field with ""
		And I fill in the password confirmation field with ""
		And I select the "Was ist Ihr Lieblingsurlaubsziel?" for the security question
		And I answer the security question with "Ebbelwoi geh immä noi"
		And I check the AGBs
		And I submit the registration form
		Then I should be in the Inventory Dashboard
		When I click on the user profile page
		Then my current address has the country "Deutschland" selected

	# There isn't a ticket for this one yet, at the time of creating
	@ss-253
	Scenario: A new user will have their language set to German
		Given that a user has all the correct information
		When I visit the registration page with token "test"
		And I fill in the first name field with ""
		And I fill in the last name field with ""
		And I fill in the mobile phone field with ""
		And I sill in the email field with ""
		And I fill in the password field with ""
		And I fill in the password confirmation field with ""
		And I select the "Was ist Ihr Lieblingsurlaubsziel?" for the security question
		And I answer the security question with "Ebbelwoi geh immä noi"
		And I check the AGBs
		And I submit the registration form
		Then I should be in the Inventory Dashboard
		When I click on the user profile page
		Then my current language has the "Deutsch" selected