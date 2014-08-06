@registration
Feature: Registration form field verification

	@ss-196
	Scenario Outline: Verify that the security question has all the options
		When I visit the registration page with token "test"
		Then the security question for <opt_value> should be a dropdown with the option "<security_question>"

	Examples:
		|  opt_value  |  security_question  |
		|  0  |  MEINE SICHERHEITSFRAGE (Kann nicht geändert werden)  |
		|  1  |  Wie heißt Ihr bester Freund aus der Jugendzeit?  |
		|  2  |  Was ist Ihr Lieblingsurlaubsziel?  |
		|  3  |  Wie lautet Ihr Lieblingsfilm?  |
		|  4  |  Wie hieß Ihr erstes Haustier?  |

	@ss-192
	Scenario: Verify the salutation field is a drop down
		When I visit the registration page with token "test"
		Then the salutation field should be a dropdown with "Frau" and "Herr"

	@ss-251
	Scenario: Verify that there is a field for the mobile phone in registration
		When I visit the registration page with token "test"
		Then the "mobilephone" field exists