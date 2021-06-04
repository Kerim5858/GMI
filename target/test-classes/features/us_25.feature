@US_25 @SmokeTest1
Feature: US_25 System should allow to create new countries using api end point

  @TC_2501
  Scenario: TC_2501 User can just create each country 1 by 1 / TC_2501 before POST request
    Given User enter REST API Endpoint as "https://www.gmibank.com/api/tp-countries/"
    And Before post request HTTP Status Code should be "200"
    And Before post request response format should be "application/json"
    And Before post request user finds out the size of the country list
    Then User send a POST request to REST API endpoint "https://www.gmibank.com/api/tp-countries/" as "Belgium"


  @TC_2502
  Scenario: TC_2502 User can read countries 1 by 1 / TC_2502 after POST request
    Given After creation send a GET request to REST API end point "https://www.gmibank.com/api/tp-countries/"
    And After creation user verifies the created country "Belgium"
    And After creation HTTP Status Code should be "200"
    Then After creation user finds out the size of the country list
