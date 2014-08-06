@registration
Feature: Registration Page
	The registration page should be accessible via the token
	Each of the fields should react as designed
	Email: MUST be valid
	Password & Password Confirmation: MUST match
	Mobile Phone: Should be a phone number


	@ss-22 @ss-322 @ss-316 @ss-13
	Scenario: A user tries to register correctly
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
		And I should see the new customer how-to

	Scenario: A user enters an invalid email address
		Given that a user has all the correct information
		When I visit the registration page with token "test"
		And I fill in the first name field with ""
		And I fill in the last name field with ""
		And I fill in the mobile phone field with ""
		And I sill in the email field with "aint no email"
		And I fill in the password field with ""
		And I fill in the password confirmation field with ""
		And I select the "Was ist Ihr Lieblingsurlaubsziel?" for the security question
		And I answer the security question with "Ebbelwoi geh immä noi"
		And I check the AGBs
		And I submit the registration form
		Then I should receive an error message "Bitte geben Sie eine gültige E-Mail Adresse ein"

	Scenario: A user enters an invalid phone number
		Given that a user has all the correct information
		When I visit the registration page with token "test"
		And I fill in the first name field with ""
		And I fill in the last name field with ""
		And I fill in the mobile phone field with "ashdkdfjlsdkjfalkadsjf"
		And I sill in the email field with ""
		And I fill in the password field with ""
		And I fill in the password confirmation field with ""
		And I select the "Was ist Ihr Lieblingsurlaubsziel?" for the security question
		And I answer the security question with "Ebbelwoi geh immä noi"
		And I check the AGBs
		And I submit the registration form
		Then I should receive an error message "Bitte geben Sie eine gültige Mobilenummer ein"

	@ss-322
	Scenario: A user enters an invalid password confirmation
		Given that a user has all the correct information
		When I visit the registration page with token "test"
		And I fill in the first name field with ""
		And I fill in the last name field with ""
		And I fill in the mobile phone field with ""
		And I sill in the email field with ""
		And I fill in the password field with ""
		And I fill in the password confirmation field with "anything but right"
		And I select the "Was ist Ihr Lieblingsurlaubsziel?" for the security question
		And I answer the security question with "Ebbelwoi geh immä noi"
		And I check the AGBs
		And I submit the registration form
		Then I should receive an error message "Achtung! Die Passwortbestätigung unterscheidet sich vom eingegebenen Passwort."

	Scenario: A user does not select a security question
		Given that a user has all the correct information
		When I visit the registration page with token "test"
		And I fill in the first name field with ""
		And I fill in the last name field with ""
		And I fill in the mobile phone field with ""
		And I sill in the email field with "aint no email"
		And I fill in the password field with ""
		And I fill in the password confirmation field with ""
		And I answer the security question with "Ebbelwoi geh immä noi"
		And I check the AGBs
		And I submit the registration form
		Then I should receive an error message "Achtung! Fehlende Angabe: Die Sicherheitsfrage"

	Scenario: A user leaves the security answer blank
		Given that a user has all the correct information
		When I visit the registration page with token "test"
		And I fill in the first name field with ""
		And I fill in the last name field with ""
		And I fill in the mobile phone field with ""
		And I sill in the email field with "aint no email"
		And I fill in the password field with ""
		And I fill in the password confirmation field with ""
		And I select the "Was ist Ihr Lieblingsurlaubsziel?" for the security question
		And I check the AGBs
		And I submit the registration form
		Then I should receive an error message "Achtung! Fehlende Angabe: Die Sicherheitsantwort"

	Scenario: A user leaves the mobile phone number blank
		Given that a user has all the correct information
		When I visit the registration page with token "test"
		And I fill in the first name field with ""
		And I fill in the last name field with ""
		And I sill in the email field with ""
		And I fill in the password field with ""
		And I fill in the password confirmation field with ""
		And I select the "Was ist Ihr Lieblingsurlaubsziel?" for the security question
		And I answer the security question with "Ebbelwoi geh immä noi"
		And I check the AGBs
		And I submit the registration form
		Then I should be in the Inventory Dashboard

	Scenario: A user leaves the first name blank
		Given that a user has all the correct information
		When I visit the registration page with token "test"
		And I fill in the last name field with ""
		And I fill in the mobile phone field with ""
		And I sill in the email field with ""
		And I fill in the password field with ""
		And I fill in the password confirmation field with ""
		And I select the "Was ist Ihr Lieblingsurlaubsziel?" for the security question
		And I answer the security question with "Ebbelwoi geh immä noi"
		And I check the AGBs
		And I submit the registration form
		Then I should receive an error message "Achtung! Fehlende Angabe: Vorname"

	Scenario: A user leaves the last name blank
		Given that a user has all the correct information
		When I visit the registration page with token "test"
		And I fill in the first name field with ""
		And I fill in the mobile phone field with ""
		And I sill in the email field with ""
		And I fill in the password field with ""
		And I fill in the password confirmation field with ""
		And I select the "Was ist Ihr Lieblingsurlaubsziel?" for the security question
		And I answer the security question with "Ebbelwoi geh immä noi"
		And I check the AGBs
		And I submit the registration form
		Then I should receive an error message "Achtung! Fehlende Angabe: Nachname"

    # This is for the account email base case
    # Expected result = new account
	@ss-257
	Scenario: A user receives the activation mail and activates the account
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
		And the user verifies the activation email and opens the link
		Then I should be in the Inventory Dashboard 
		And I should see the message "Danke"

	# This is for the account email being duplicated for a non-confirmed account
	# Expected result = account deactivates the old email
	@ss-257
	Scenario: A user tries to register with the same email twice
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
		And I click the Logout button
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
		Then I should receive an error message "Achtung! You sure as hell can't register again" 

	# This is for the account email being duplicated for a non-confirmed account
	# Expected result = goes to "lost password" page
	@ss-257
	Scenario: A user tries to register with the same email twice
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
		And the user verifies the activation email and opens the link
		Then I should be in the Inventory Dashboard 
		And I should see the message "Danke"
		Then I click the Logout button
		And I visit the registration page with token "test"
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
		Then I should be at the path "/lostpassword"
		And I should see the message "Diese Email ist schon registriert"

    # Leaving out First name
	@ss-292
	Scenario: Verify that data entered by the user remains if a field fails verification
		Given that a user has all the correct information
		When I visit the registration page with token "test"
		#And I fill in the first name field with ""
		And I fill in the last name field with ""
		And I fill in the mobile phone field with ""
		And I sill in the email field with ""
		And I fill in the password field with ""
		And I fill in the password confirmation field with ""
		And I select the "Was ist Ihr Lieblingsurlaubsziel?" for the security question
		And I answer the security question with ""
		And I check the AGBs
		And I submit the registration form
		#Then the "firstname" field still has user array data "fname"
		And I click away the popup window
		And the "lastname" field still has user array data "lname"
		And the "mobilephone" field still has user array data "mobile"
		And the "password" field still has user array data "password"
		And the "password-confirm" field still has user array data "password"
		And the "answer" field still has user array data "answer"
		And the security question is set to "Was ist Ihr Lieblingsurlaubsziel?"
		And the AGBs are still checked

    # Double checking first name
	@ss-292
	Scenario: Verify that data entered by the user remains if a field fails verification
		Given that a user has all the correct information
		When I visit the registration page with token "test"
		And I fill in the first name field with ""
		#And I fill in the last name field with ""
		And I fill in the mobile phone field with ""
		And I sill in the email field with ""
		And I fill in the password field with ""
		And I fill in the password confirmation field with ""
		And I select the "Was ist Ihr Lieblingsurlaubsziel?" for the security question
		And I answer the security question with ""
		And I check the AGBs
		And I submit the registration form
		And I click away the popup window
		Then the "firstname" field still has user array data "fname"
		#And the "lastname" field still has user array data "lname"
		And the "mobilephone" field still has user array data "mobile"
		And the "password" field still has user array data "password"
		And the "password-confirm" field still has user array data "password"
		And the "answer" field still has user array data "answer"
		And the security question is set to "Was ist Ihr Lieblingsurlaubsziel?"
		And the AGBs are still checked

    #This one will try to do things after registering but not activating
	@ss-194
	Scenario: A user tries to register correctly
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
		And I should see the new customer how-to
		Then I click away the popup window
		And I click on the first box
		And I change the box name to "who got dis box"
		And I change the description to "1 Car Exhaust \r \n2 Tires"
		And I save the box changes
		Then I should be in the Inventory Dashboard
		And I have a box called "who got dis box"
		And There is a box called "who got dis box" with "1" parts
		And I click on the user profile page
		Then I should be on the user profile page
		And I click on the documents page
		Then I should be on the user documents page


