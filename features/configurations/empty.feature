Feature: configuring the commands

  As a developer using Tertestrial
  I want to be able to configure how my files are tested
  So that I can use Tertestrial with my own test tools.

  - Tertestrial is configured via a file "tertestrial.yml"
    in the root directory of the project
  - this file defines a number of actions:
    pairs of patterns that match data sent from the editor to templates of commands to run


  Background:
    Given Tertestrial runs with the configuration:
      """
      actions:
        - command: 'echo Running the command!'
      """


  Scenario: simple configuration file
    When sending the command:
      """
      {}
      """
    Then I see "Running the command!"
