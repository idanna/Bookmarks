@step1
Feature: User should be able to open site and see a welcome screen
  Scenario: User navigates to the home page
    Given I navigated to the Bookmark app
    Then I should should see a welcome screen
