Feature: See available employees
  Descriptions: A project manager wants to see available employees
  Actors: user


  Scenario: A user request to see available employees successfully
    Given the user is the manager of the project
    When the user request to see available employees
    Then there is given a list with all names of available employees


  Scenario: request to see available employees when the user is not the project manager
    Given that the user is not the project manager
    When the user request to see available employees
    Then the error message "project manager is not registered" is given


  Scenario: A user request to see available employees when there are no employees available
    Given the user is the manager of the project
    And there are no employees available
    When the user request to see available employees
    Then the error message "No available employees" is given

