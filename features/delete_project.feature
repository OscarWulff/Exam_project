Feature: Delete project
  Descriptions: project manager deletes project
  Actors: user

  Scenario: A user deletes project successfully
    Given there is a project
    And the user is the manager of the project
    When the user request to remove the project
    Then the project should be removed


  Scenario: A user deletes project when the user is not the project manager
    Given there is a project
    And the user is not the manager of the project
    When the user request to remove a project
    Then the error message "project manager is not registered" is given


    