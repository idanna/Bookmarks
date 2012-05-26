@step2
Feature: User Managment

		Scenario: New user register to the website
			Given I navigated to registration path
			And I fill the registration form
			Then I should have a new user in the database
			And I should be on the bookmark page
			
		Scenario: Signed user want to signout
			Given I am signed in
			And I should be on the bookmark page
			And I press logout
			Then I should be on the welcome screen
			And I should see "Please login to the app:"
