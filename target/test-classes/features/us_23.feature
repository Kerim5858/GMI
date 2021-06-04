@US_23  @SmokeTest1
  Feature: US_23 system should allow to read all Applicants using api end point

    Background: TC_2301 and TC_2302 background
      Given us_o23 use api end point  "https://www.gmibank.com/api/tp-account-registrations"
      And get all applicants' information

    @TC_2301
    Scenario: TC_2301 read all countries you created and validate them from your data set
      Given verify that the status code is 200
      And find out applicants size and verify
      And Find the number of those whose id is less than 5000 and verify the number
      And verify if there are any applicants named "Ali"

    @TC_2302
    Scenario: TC_2302 read all customers you created and validate them 1 by 1
      Given  one get seventh applicants id 1605 and verify
      And two get seventh applicants ssn "432-45-6780" and verify
      And three get seventh applicants "firstName" "Orhan" and verify
      And four get seventh applicants "lastName" "Keskin" and verify
      And five get seventh applicants "address" "Just a street" and verify
      And six get seventh applicants "mobilePhoneNumber": "222-333-4444" and verify
      And seven get seventh applicants "userId": 1555 and verify
      And eigth get seventh applicants "userName": "orhan" and verify
      And nine get seventh applicants "email": "emailexample@gmail.com" and verify
      And ten get seventh applicants "createDate": "2020-10-17T22:57:07.690Z" and verify