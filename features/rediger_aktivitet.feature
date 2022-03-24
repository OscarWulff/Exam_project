
Feature: Edit activity
	Description: An activity in the project is edited
	Actors: Project manager, Employee

Scenario: Edit the name of an activity successfully
	Given that the user is project manager with the initials "MOHE"
 	And there is a project called "clean", with project number "19"
	And the project contains an activity with the name "spillMilk"
	And there is a name "mopFloor"
	When the name is edited
	Then the name of the activity is "mopFloor"

Scenario: Edit the employee working on the activity successfully
	Given that the user is project manager with the initials "PAFI"
	And there is a project called "Intro til software", with project number "420"
	And the project contains an activity with the name "dårligt navn" and employee. id number "20"
	And there is an employee. id number "21"
	When the employee is replaced
	Then the employee id number of the activity is "21"


Scenario: Edit the name of an activity without being project manager
	Given that the user is not manager of the project, with the initials "MOHE"
	And there is a project called "Intro til software", with project number "420"
	When the name of the activity is edited to "dårligt navn"
	Then the error message "Requires project manager" is given

Scenario: Edit the employee working on the activity
	Given that the user is not manager of the project, with the initials "MOHE"
	And there is a project called "Intro til software", with project number "420"
	When the employee of the activity is edited to "21"
	Then the error message "Requires project manager" is given