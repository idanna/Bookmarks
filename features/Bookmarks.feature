@step3
Feature: User can manage bookmarks
  Background:
    Given I am signed in
    And I navigated to the Bookmark app

  Scenario: User adds a bookmark
    Given I fill in bookmark link with "www.youtube.com"
    And I press submit
    Then I should have a new bookmark in my databse
    And I should see "www.youtube.com" on my bookmarks list
    
@step4
  Scenario: User removes a single bookmark
    Given I have a bookmark to "www.youtube.com"
    And I press on the delete link
    Then I should have not have "www.youtube.com" in the database
    And I should see "Bookmark was succesfully deleted"
