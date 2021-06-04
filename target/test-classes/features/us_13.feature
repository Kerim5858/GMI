@US13 @SmokeTest
Feature: US13 tests

  Background: user anters gmibank homepage then reaches create new costomers link
    Given user enters gmibank homepage
    Then user clicks userEntry icon
    Then user clicks signIn link
    Then user enters admin username "sametyaprak"
    Then user enters admin password "Ankara06"
    Then user clicks signIn button
    And user clicks myOperations link
    And user clicks manageAccounts link
    And user clicks createNewAccount link

  @tc1301
  Scenario: user enter Description
    Given  user click Description
    And   user click Balance
    And  user sees required message
    And user signOut


  @tc1302
  Scenario: user should provide a balance as a Dollar
    Given  user create as a dollar account "100" and verify
    And user signOut

  @tc1303
  Scenario: User can select an account type as CHECKING, SAVING, CREDIT_CARD or INVESTING
    Given user select an acount as CHECKING and verify
    And user select an acount as a SAVING and verify
    And user select an acount as a CREDIT_CARD and verify
    And user select an acount as a INVESTING and verify
    And user signOut

  @tc1304
  Scenario: User should account status defined as ACTIVE, SUSPENDED or CLOSED
    Given user click Account Status Type definied as a ACTIVE and verify
    And user click Account Status Type definied as a  SUESPENDED and verify
    And user click Account Status Type definied as a  CLOSED and verify
    And user signOut

  @tc1305
  Scenario: User can select an employee from the drop-down
    Given user select Employee and verify the selectet Employee
    And user signOut




