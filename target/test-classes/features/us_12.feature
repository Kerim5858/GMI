@US12 @SmokeTest
Feature: US12 tests

  Background: user anters gmibank homepage then reaches create new costomers link
    Given user enters gmibank homepage
    Then user clicks userEntry icon
    Then user clicks signIn link
    Then user enters admin username "sametyaprak"
    Then user enters admin password "Ankara06"
    Then user clicks signIn button
    And user clicks myOperations link
    And user clicks manageCostomers link

  @tc1201
  Scenario: tc1201 user should show the account information of the customer First Name
    Given     user should show First Name and verify valid
    Then      user signOut

  @tc1202
  Scenario:   tc1202 user should show the account information of the customer Last Name
    Given     user should show Last Name and verify valid
    Then      user signOut

  @tc1203
  Scenario:  tc1203  user should show the account information of the customer Middle Initial
    Given     user should show Middle Initial and verify valid
    Then      user signOut

  @tc1204
  Scenario:  tc1204  user should show the account information of the customer Email
    Given     user should show Email and verify valid
    Then user signOut

  @tc1205
  Scenario:  tc1205 user should show the account information of the customer Mobile Phone Nummer
    Given     user should show Mobile Phone Nummer and verify valid
    Then user signOut

  @tc1206
  Scenario:  tc1206 user should show the account information of the customer Phone Nummer
    Given     user should show Phone Nummer and verify valid
    Then user signOut

  @tc1207
  Scenario:   tc1207 user should show the account information of the customer Address
    Given     user should show Address and verify valid
    Then user signOut

  @tc1208
  Scenario:   tc1208 user should show the account information of the customer Create Date
    Given     user should show Create Date and verify valid
    Then user signOut

  @tc1209
  Scenario:   tc1209 user should be an Edit Button where all customer information can be populated
    Given     user should show Edit Button and verify valid
    Then user signOut


  @tc1210
  Scenario:  tc1210 user should to create or update the Email address
    Given     user should write and new the Email address
    And       user click Save Button
    Then      user verifies translation not found[gmiBankBackendApp.tPCustomer.updated
    Then user signOut

  @tc1211
  Scenario:  tc1211 user should to create or update the Mobile Phone Nummer
    Given     user should write and new the Mobile Phone Nummer
    And       user click Save one Button
    Then      user verifies translation not found[gmiBankBackendApp.tPCustomer.updated
    Then user signOut

  @tc1212
  Scenario:   tc1212 user should to create or update the Phone Nummer
    Given     user should write and new the Phone Nummer
    And       user click Save two Button
    Then      user verifies translation not found[gmiBankBackendApp.tPCustomer.updated
    Then user signOut

  @tc1213
  Scenario:  tc1213 user should to create or update the Address
    Given     user should write and new the Address
    And       user click Save three Button
    Then      user verifies translation not found[gmiBankBackendApp.tPCustomer.updated
    Then user signOut

  @tc1214
  Scenario:  tc1214 user should delete a customer but seeing a message if the user is sure about deletion
    Given     user click Delete Button
    Then      user verifies Are you sure you want to delete Customer
    Then      user signOut




