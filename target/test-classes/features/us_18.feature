@US_18 @SmokeTest1
Feature: US_18 tests

  Background: user anters gmibank homepage then reaches create new costomers link
    Given user enters gmibank homepage
    Then user clicks userEntry icon
    Then user clicks signIn link
    Then user enters admin username "AAbc398"
    Then user enters admin password "A1b2C3"
    Then user clicks signIn button
    And user clicks myOperations link
    And user clicks manageCostomers link

  @tc1801
  Scenario: tc1801 user should show the account information of the customer First Name
    Given     ADMIN can select First Name, Last Name, Middle Initial, Email, Mobile Phone Nummer, Phone Nummer, Address,Date updated
    Then      user signOut

  @tc1802
  Scenario: tc1802 There should be a View option where customer can be navigated to all customer info and see  edit button there
    Given     ADMIN should show Edit Button and verify valid
    Then      user signOut

  @tc1803
  Scenario:  There should be an Edit button where all customer information
  can be populated
    Given     ADMIN should write and new the Email address
    And       ADMIN click Save Button
    Then      ADMIN verifies translation not found[gmiBankBackendApp.tPCustomer.updated
    Then      user signOut


  @tc1804
  Scenario:  The Edit portal can allow user to create or update the user info
    Given     ADMIN  should write and new the Phone Nummer
    And       ADMIN click Save Button
    Then      ADMIN  verifies translations not found[gmiBankBackendApp.tPCustomer.updated
    Then      user signOut


  @tc1805
  Scenario:   User can delete a customer, but seeing a message if the user is
  sure about deletion
    Given     ADMIN should write and new the Address
    And       ADMIN click Save three Button
    Then      ADMIN  verifies translat not found[gmiBankBackendApp.tPCustomer.updated
    Then      user signOut











