@US_21 @SmokeTest1
Feature: US_21 system should allow to read all customers info using api end point

  Background: TC_2101 and TC_2102 background
    Given use this api end point  "https://www.gmibank.com/api/tp-countries"
    And get all countries information as De-Serialization

  @TC_2101
  Scenario: TC_2101 read all countries you created and validate them from your data set
    And find out how many countries are and verify
    And get all the information of the eighth contries
    And verify eighth Country "id" is "18902" and "name" is "Hollanda"



  @TC_2002
  Scenario: TC_2102 read all countries you created and validate them 1 by 1
    And verify all countries you created and validate them one by one

