# This is to setup and instance for testing initialy with the users that are being re-used
@setup
Feature: Set up a testing instance

	@setup-profile
	Scenario: Set up a user for all the other tests
		Given that a the "profile" user exists
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
		Then I will find an email sent to the user with the title "Send & Store: Registrierung"
		Then I will click on the registration link in the email
		Then I should be in the Inventory Dashboard
		And I click away the newbie popup window

	@setup-inventory
	Scenario: Set up a inventory user for all the other tests
		Given that a the "inventory" user exists
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
		Then I will find an email sent to the user with the title "Send & Store: Registrierung"
		Then I will click on the registration link in the email
		Then I should be in the Inventory Dashboard
		And I click away the newbie popup window

	@setup-send-single-user
	Scenario: Set up a inventory user for all the other tests
		Given that a the "sendSingle" user exists
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
		Then I will find an email sent to the user with the title "Send & Store: Registrierung"
		Then I will click on the registration link in the email
		Then I should be in the Inventory Dashboard
		And I click away the newbie popup window

	@setup-storage-facility
	Scenario: I set up a storage location in the back end
		When I visit the admin backend on port "3009"
		And I fill in the "email" with "admin@sendandstore.de"
		And I fill in the "password" with "foo"
		And I click the button "Anmelden"
		Then I am in the Admin Dashboard
		When I click on the link "StorageFacilities"
		# /html/body/div[3]/div[1]/div[4]/div[2]/i
		And I click on the plus symbol to add a storage facility
		And I fill in the "name" with "Super Special Storage"
		And I fill in the "token" with "aaabbbccc123"
		And I fill in the "hlg_return_auth_partnerid" with "EXT000211"
		And I fill in the "hlg_return_auth_password" with "627e82db0a24c96460099230c3178c98e1f81b49af677fe7"
		And I fill in the "hlg_props_auth_partnerid" with "EXT000418"
		And I fill in the "hlg_props_auth_password" with "c3b5b5ce667c53ca134b17f911332563"
		And I fill in the "company" with "Liquid Labs GmbH"
		And I fill in the "street" with "Steindamm"
		And I fill in the "street_no" with "80"
		And I fill in the "zip_code" with "20099"
		And I fill in the "city" with "Hamburg"
		And I fill in the "state" with "Hamburg"
		And I select "Deutschland" from the drop down menu "country"
		# /html/body/div[3]/div[1]/div[4]/div[1]
		And I click the save symbol to save the storage facility
		Then I see my storage facility "Super Special Storage" in the storage facility list
