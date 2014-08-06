#Profile Basics
#WARNING!!! These might be harder, as the setup has to run first
# Tag the first test with ALL ss tickets to make them "work" at a tag level
# FIXME: TODO: maybe more high style so nic can actualy make sence and refactore so the steps do all this
@profile
Feature: User Profile Page
		
	Scejnario: This user can change their salutation
		Given that a the "profile" user exists
		When I log in as a user
		And I click away the newbie popup window
		And I click on the user profile page
		Then I can change the "salutation" drop down to "Herr"
		And I save the changes
		# NEEDS verification of save? Where does it go to?

	Scenario: This user can change their title
		Given that a the "profile" user exists
		When I log in as a user
		And I click away the newbie popup window
		And I click on the user profile page
		Then I can change the "title" input field to "Dr. Prof. Dipl. Ing."
		And I save the changes
		# NEEDS verification of save? Where does it go to?

	Scenario: This user can change their first name
		Given that a the "profile" user exists
		When I log in as a user
		And I click away the newbie popup window
		And I click on the user profile page
		Then I can change the "firstname" input field to "I am Different"
		And I save the changes
		# NEEDS verification of save? Where does it go to?

	Scenario: This user can change their last name
		Given that a the "profile" user exists
		When I log in as a user
		And I click away the newbie popup window
		And I click on the user profile page
		Then I can change the "lastname" input field to "Anders"
		And I save the changes
		# NEEDS verification of save? Where does it go to?

	Scenario: This user can change their mobile number
		Given that a the "profile" user exists
		When I log in as a user
		And I click away the newbie popup window
		And I click on the user profile page
		Then I can change the "mobilephone" input field to "+492222222222222"
		And I save the changes
		# NEEDS verification of save? Where does it go to?

	Scenario: This user can change their language
		Given that a the "profile" user exists
		When I log in as a user
		And I click away the newbie popup window
		And I click on the user profile page
		Then I can change the "language" drop down to "english"
		And I save the changes
		# NEEDS verification of save? Where does it go to?

	Scenario: This user can change their title
		Given that a the "profile" user exists
		When I log in as a user
		And I click away the newbie popup window
		And I click on the user profile page
		Then I can change the "title" input field to "Dr. Prof. Dipl. Ing."
		And I save the changes
		# NEEDS verification of save? Where does it go to?

	Scenario: This user can change their address to a valid address
		Given that a the "profile" user exists
		When I log in as a user
		And I click away the newbie popup window
		And I click on the user profile page
		Then I can change the "company" input field to "Random Company"
		And I can change the "careof" input field to "People who like me"
		And I can change the "street" input field to "Steindamm"
		And I can change the "streetno" input field to "80"
		And I can change the "zipcode" input field to "20099"
		And I can change the "city" input field to "Hamburg"
		Then I can change the "country" drop down to "Deutschland"
		And I save the changes
		# NEEDS verification of save? Where does it go to?

	Scenario: This user can change their address to an invalid street
		Given that a the "profile" user exists
		When I log in as a user
		And I click away the newbie popup window
		And I click on the user profile page
		Then I can change the "company" input field to "Random Company"
		And I can change the "careof" input field to "People who like me"
		And I can change the "street" input field to "Backestani Ave"
		And I can change the "streetno" input field to "80"
		And I can change the "zipcode" input field to "20099"
		And I can change the "city" input field to "Hamburg"
		Then I can change the "country" drop down to "Deutschland"
		And I save the changes
		# NEEDS verification of save? Where does it go to?

	Scenario: This user can change their address to an invalid Hausnummer
		Given that a the "profile" user exists
		When I log in as a user
		And I click away the newbie popup window
		And I click on the user profile page
		Then I can change the "company" input field to "Random Company"
		And I can change the "careof" input field to "People who like me"
		And I can change the "street" input field to "Steindamm"
		And I can change the "streetno" input field to "3456897"
		And I can change the "zipcode" input field to "20099"
		And I can change the "city" input field to "Hamburg"
		Then I can change the "country" drop down to "Deutschland"
		And I save the changes
		# NEEDS verification of save? Where does it go to?

	Scenario: This user can change their address to an invalid Zip code
		Given that a the "profile" user exists
		When I log in as a user
		And I click away the newbie popup window
		And I click on the user profile page
		Then I can change the "company" input field to "Random Company"
		And I can change the "careof" input field to "People who like me"
		And I can change the "street" input field to "Steindamm"
		And I can change the "streetno" input field to "80"
		And I can change the "zipcode" input field to "66666"
		And I can change the "city" input field to "Hamburg"
		Then I can change the "country" drop down to "Deutschland"
		And I save the changes
		# NEEDS verification of save? Where does it go to?

	Scenario: This user can change their address to an invalid city
		Given that a the "profile" user exists
		When I log in as a user
		And I click away the newbie popup window
		And I click on the user profile page
		Then I can change the "company" input field to "Random Company"
		And I can change the "careof" input field to "People who like me"
		And I can change the "street" input field to "Steindamm"
		And I can change the "streetno" input field to "80"
		And I can change the "zipcode" input field to "20099"
		And I can change the "city" input field to "Cheesburger"
		Then I can change the "country" drop down to "Deutschland"
		And I save the changes
		# NEEDS verification of save? Where does it go to?

	Scenario: This user can change their tracking notification
		Given that a the "profile" user exists
		When I log in as a user
		And I click away the newbie popup window
		And I click on the user profile page
		Then I can uncheck the "notification_services[0]" checkbox
		And I save the changes
		# NEEDS verification of save? Where does it go to?

	Scenario: This user can change their pickup reminders
		Given that a the "profile" user exists
		When I log in as a user
		And I click away the newbie popup window
		And I click on the user profile page
		Then I can uncheck the "notification_services[1]" checkbox
		And I save the changes
		# NEEDS verification of save? Where does it go to?

	Scenario: This user can change their email correctly
		Given that a the "profile" user exists
		When I log in as a user
		And I click away the newbie popup window
		And I click on the user profile page
		Then I can change the "email" input field to "**RANDOM_EMAIL**"
		And I answer the security question correctly
		And I save the changes
		Then I will find an email sent to the user with the title "Yo Email done changed!"
		# NEEDS verification of save? Where does it go to?		

	Scenario: This user can change their email with an invalid email
		Given that a the "profile" user exists
		When I log in as a user
		And I click away the newbie popup window
		And I click on the user profile page
		Then I can change the "email" input field to "asdkjhasdljkhasf"
		And I answer the security question correctly
		And I save the changes
		# NEEDS verification of failure? Where does it go to?		

	Scenario: This user can change their email with and invalid answer
		Given that a the "profile" user exists
		When I log in as a user
		And I click away the newbie popup window
		And I click on the user profile page
		Then I can change the "email" input field to "**RANDOM_EMAIL**"
		Then I can change the "answer" input field to "asdkjhasdljkhasf"
		And I save the changes
		# NEEDS verification of failure? Where does it go to?		

  @SS-120
  Scenario:

    In order to be more flexible
    As a User
    I want to be able to add multiple addresses

    Given I am on the "Profil" page
    And I have entered my "main" "address"
    Then I should be able to enter a second address
	
