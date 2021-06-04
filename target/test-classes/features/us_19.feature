@US_19 @SmokeTest1
Feature: US_19 tests

  Background: user anters gmibank homepage then reaches create new costomers link
    Given user enters gmibank homepage
    Then user clicks userEntry icon
    Then user clicks signIn link
    Then user enters admin username "pader49"
    Then user enters admin password "pader49."
    Then user clicks signIn button
    And user clicks myOperations link
    And user clicks manageAccounts link
    And user clicks createNewAccount link

  @tc1901
  Scenario: tc1901 admin enter Description
    Given   admin click Description
    And     admin click Balance
    And     admin sees required message
    And     admin signOut


  @tc1902
  Scenario:  tc1902 should provide a balance as a Dollar
    Given    admin create as a dollar account "200" and verify
    And      admin signOut

  @tc1903
  Scenario: tc1903 can select an account type as CHECKING, SAVING, CREDIT_CARD or INVESTING
    Given   admin select an account as CHECKING and verify
    And     admin select an account as a SAVING and verify
    And     admin select an account as a CREDIT_CARD and verify
    And     admin select an account as a INVESTING and verify
    And     admin signOut

  @tc1904
  Scenario: tc1904 should account status defined as ACTIVE, SUESPENDED or CLOSED
    Given   admin click Account Status Type defined as a ACTIVE and verify
    And     admin click Account Status Type defined as a  SUESPENDED and verify
    And     admin click Account Status Type defined as a  CLOSED and verify
    And     admin signOut

  @tc1905
  Scenario: tc1905 can select an employee from the drop-down
    Given   admin select Employee and verify the selectet Employee
    And     admin signOut
