Feature: Invite User to Project

  In order to add a user to a project,
  As a project administrator
  I want to send a project invitation to that user
	
  @wip
  Scenario: An invite is sent to an non-existent user
	
	Given a baseline configuration	
    And I am logged in as "john@test.com"
	
	Given I am using project "Project One"
	When I send an invitation to "eric@test.com"
	Then an email is sent to "eric@test.com"
	And an account for "eric@test.com" exists
	And the account for "eric@test.com" is marked as pending

  Scenario: An invite is sent to an existing user - the user is immediately added to the project

  Scenario: Expire pending accounts after 30 days

  Scenario: Confirmation of project invitation

