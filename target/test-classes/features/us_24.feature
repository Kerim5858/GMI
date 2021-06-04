@US_24 @SmokeTest1
  Feature: US_24 System should allow to create new states using api endpoint
    Scenario: User can Just create each state 1 by 1 / TC_2401 before POST request
      Given user enter REST API endpoint as "http://gmibank.com/api/tp-states"
      And Before post request should be HTTP Status Code 200
      And Before post request should be response format "application/json"
      And Before post request user finds out the size of the state list
      Then User sends a POST request to REST API endpoint "http://gmibank.com/api/tp-states" as "Russelsheim"


      Scenario: User can Just create each state 1 by 1 / TC_2401 after POST request
        Given After creation user sends a GET request to REST API endpoint "http://gmibank.com/api/tp-states"
        And After state creation HTTP Status Code should be 200
        And After creation user verifies the created "Russelsheim"
        And After the creation request, the user sees the size of the status list
