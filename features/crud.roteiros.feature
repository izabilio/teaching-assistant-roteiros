Feature: Routines management
  As a teacher
  I want to create, update, and remove routines
  In order to keep the course materials organized and up to date

 Scenario: Registering a new routine successfully
  Given I am on the routine creation page
  When I fill in the title "Git Tutorial" and the answers
  And I click the "Save" button
  Then I should see the confirmation message "Routine successfully created"

Scenario: Failing to update a routine that does not exist
    Given I am on the routine management page
    When I try to update a routine that does not exist
    Then I should see an error message

    Scenario: Failing to remove a routine that does not exist
    Given I am on the routine management page
    When I try to remove a routine that does not exist
    Then I should see an error message
    And the routine should remain unchanged

    
    

    Scenario: Updating a routine successfully
    Given I am on the routine management page
    When I update an existing routine
    Then I should see the updated routine

    Scenario: Removing a routine successfully
    Given I am on the routine management page
    When I remove an existing routine
    Then I should no longer see the routine
    And I should see the confirmation message "Routine successfully removed"

Scenario: Viewing a routine details
    Given I am on the routine management page
    When I select an existing routine
    Then I should see the routine details

    Scenario: Viewing all routines
    Given I am on the routine management page
    When I view the routines
    Then I should see the list of routines

    Scenario: Searching for a routine
    Given I am on the routine management page
    When I search for a routine
    Then I should see the matching routine
