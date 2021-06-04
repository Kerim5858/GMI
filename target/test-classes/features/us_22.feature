@US_22 @SmokeTest1
Feature: US_22 System should allow to read states using api end point

  Background: TC_22 and TC_2002 background
    Given Use api end point "https://www.gmibank.com/api/tp-states"
    And get all states as De-Serialization

  @TC_2001
  Scenario: TC_2201 Read all states you created and validate them from your data set
    And find out how many states
    And Verify id of Koblenz is (integer) "19241"


  @TC_2002
  Scenario Outline: TC_2202 read all states you created and validate them 1 by 1
    And verify list of the states contains <states>
    Examples:
      | states   |
      | Centre   |
      | Auvergne |
      | Koblenz  |
      | Virginia |
