Feature: Routines management
  As a teacher
  I want to create, update, and remove routines
  In order to keep the course materials organized and up to date

 Scenario: Registering a new routine successfully
  Given I am on the routine creation page
  When I fill in the title "Git Tutorial" and the answers
  And I click the "Save" button
  Then I should see the confirmation message "Routine successfully created"

